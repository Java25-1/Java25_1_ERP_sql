using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Security.Cryptography;

namespace GetMD5
{
    public partial class GetMD5Form : Form
    {
        public GetMD5Form()
        {
            InitializeComponent();
        }

        /// <summary>
        /// 取字符串的MD5哈希串
        /// </summary>
        /// <param name="sourceText">源字符串</param>
        /// <returns>十六个字节的MD5哈希数组</returns>
        public static byte[] MD5Hash(string sourceText)
        {
            Encoding ecd = Encoding.ASCII;
            return MD5Hash(ecd.GetBytes(sourceText));
        }

        /// <summary>
        /// 取字节数组的MD5哈希串
        /// </summary>
        /// <param name="sourceArray">源字节数组</param>
        /// <returns>十六个字节的MD5哈希数组</returns>
        public static byte[] MD5Hash(byte[] sourceArray)
        {
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            try
            {
                return md5.ComputeHash(sourceArray);
            }
            finally
            {
                md5.Clear();
            }
        }

        /// <summary>
        /// 取字符串的MD5的十六进制文本
        /// </summary>
        /// <param name="sourceText">源字符串</param>
        /// <returns>字符串的MD5的十六进制文本</returns>
        public static string MD5Hex(string sourceText)
        {
            return ByteArrayToHex(MD5Hash(sourceText));
        }

        /// <summary>
        /// 字节数组转换为十六进制字符串
        /// </summary>
        /// <param name="sourceArray">源字节数组</param>
        /// <returns>十六进制字符串</returns>
        public static string ByteArrayToHex(byte[] sourceArray)
        {
            string trg = "";
            string[] hexChar = new string[16] {"0", "1", "2", "3", "4", "5", "6", "7",
                                               "8", "9", "A", "B", "C", "D", "E", "F"};

            for (int i = 0; i < sourceArray.Length; i++)
            {
                trg += (hexChar[(sourceArray[i] >> 4) & 0x0f] + hexChar[sourceArray[i] & 0x0f]);
            }

            return trg;
        }


        private void button1_Click(object sender, EventArgs e)
        {
            textBox2.Text = MD5Hex(textBox1.Text);
        }
    }
}
