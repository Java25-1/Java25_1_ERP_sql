/**************************************************
 * ��Ȩ����: ̷�ɳ�
 * �� �� ��: CheckCodeImage.cs
 * �ļ�����: 
 * ����˵��: 
 *           CheckCodeImage ��֤��ͼ����
 * ��Ȩ����:
 *           ������Ϊ���������
 *           ���������������������������GPL v3��Ȩ����Ա������ٴη�����/���޸ģ�
 *           �������ǻ���ʹ��Ŀ�Ķ����Է�����Ȼ�������κε������Σ�
 *           ���޶������Ի��ض�Ŀ����������Ϊ��Ĭʾ�Ե�����
 *           ���������GNUͨ�ù�����Ȩ v3���μ�license.txt�ļ�����
 * �汾��ʷ: 
 *           v1.0.0 ̷�ɳ� 2008-06-30 ����
 *           
***************************************************/
using System;
using System.IO;
using System.Collections.Generic;
using System.Text;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Text;
using System.Drawing.Imaging;

namespace txcpts.PortalSide
{
    /// <summary>
    /// ��֤��ͼ��
    /// </summary>
    public class CheckCodeImage
    {
        string checkCode = "abc123";

        /// <summary>
        /// ������ת��Ϊ��ʮ�������ַ���(���֧��12λ��ʮ��������)
        /// </summary>
        /// <param name="sourceInt">Դ����</param>
        /// <returns>��ʮ�������ַ���</returns>
        private string IntToBASE36(Int64 sourceInt)
        {
            if ((sourceInt < 0) ||
                (sourceInt > 4738381338321616895)) //36 ^ 12 = 4,738,381,338,321,616,896; 2 ^ 62= 4,611,686,018,427,387,904 
            {
                throw new Exception("Ҫת������������0~4,738,381,338,321,616,895(12λ36�����ܱ�ʾ�������)֮��");
            }


            string[] BASEChar = new string[36] {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
                                                "a", "b", "c", "d", "e", "f", "g", "h", "i", "j",
                                                "k", "L", "m", "n", "o", "p", "q", "r", "s", "t",
                                                "u", "v", "w", "x", "y", "z"};
            string trg = "";
            Int64 ti = sourceInt;

            //36^11=131621703842267136
            trg = BASEChar[ti / 131621703842267136];
            ti = ti % 131621703842267136;
            //36^10=3656158440062976
            trg += BASEChar[ti / 3656158440062976];
            ti = ti % 3656158440062976;
            //36^9=101559956668416
            trg += BASEChar[ti / 101559956668416];
            ti = ti % 101559956668416;
            //36^8=2821109907456
            trg += BASEChar[ti / 2821109907456];
            ti = ti % 2821109907456;
            //36^7=78364164096
            trg += BASEChar[ti / 78364164096];
            ti = ti % 78364164096;
            //36^6=2176782336
            trg += BASEChar[ti / 2176782336];
            ti = ti % 2176782336;
            //36^5=60466176
            trg += BASEChar[ti / 60466176];
            ti = ti % 60466176;
            //36^4=1679616
            trg += BASEChar[ti / 1679616];
            ti = ti % 1679616;
            //36^3=46656
            trg += BASEChar[ti / 46656];
            ti = ti % 46656;
            //36^2=1296
            trg += BASEChar[ti / 1296];
            ti = ti % 1296;
            //36^1=36
            trg += BASEChar[ti / 36];
            ti = ti % 36;
            //36^0=1
            trg += BASEChar[ti];

            trg = trg.TrimStart(new char[1] { '0' });
            if (trg == "")
                trg = "0";
            return trg;
        }

        /// <summary>
        /// ���췽��
        /// </summary>
        public CheckCodeImage()
        {
            Random rnd = new Random();
            checkCode = IntToBASE36(rnd.Next(Int32.MaxValue));
        }

        /// <summary>
        /// �����֤��
        /// </summary>
        public string CheckCode
        {
            get
            {
                return checkCode;
            }
        }

        //�������ˢ�ӷ��
        private HatchStyle GenerateHatchStyle()
        {
            List<HatchStyle> slist = new List<HatchStyle>();

            foreach (HatchStyle style in System.Enum.GetValues(typeof(HatchStyle)))
                slist.Add(style);

            Random rnd = new Random();

            return slist[rnd.Next(slist.Count - 1)];
        }


        /// <summary>
        /// ȡ��֤��ͼ��
        /// </summary>
        /// <returns>ͼ������</returns>
        public byte[] GetImage()
        {
            Bitmap bitmap = new Bitmap(90, 24);
            Graphics graphics = Graphics.FromImage(bitmap);
            Color foreColor = Color.FromArgb(220, 220, 220),
                  backColor = Color.FromArgb(190, 190, 190);
            string font = "Arial";
            HatchBrush hatchBrush = new HatchBrush(GenerateHatchStyle(), foreColor, backColor);

            SolidBrush[] solidBrushs = new SolidBrush[5] { new SolidBrush(Color.Black), 
                                                           new SolidBrush(Color.Green),
                                                           new SolidBrush(Color.Blue),
                                                           new SolidBrush(Color.Red),
                                                           new SolidBrush(Color.FromArgb(0x33, 0x66, 0x99))
                                                          };

            graphics.FillRectangle(hatchBrush, 0, 0, 90, 24);
            graphics.TextRenderingHint = TextRenderingHint.AntiAlias;

            Random rnd = new Random();

            for (int i = 0; i < checkCode.Length; i++)
            {
                int j = 0;
                j = rnd.Next(5);

                graphics.DrawString(checkCode.Substring(i, 1),
                    new Font(font, 16, ((j % 2 == 0) ? FontStyle.Italic : FontStyle.Regular)),
                    solidBrushs[j],
                    new PointF((float)(2 + i * 13 + j), (float)((float)j / 4.0)));
            }

            MemoryStream ms = new MemoryStream();
            bitmap.Save(ms, ImageFormat.Jpeg);
            return ms.ToArray();
        }
    }
}
