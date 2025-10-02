📁 Secure Folder Manager - أداة قفل المجلدات
<div align="right">
https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white
https://img.shields.io/badge/Batch-4D4D4D?style=for-the-badge&logo=windows&logoColor=white
https://img.shields.io/badge/Security-00FF00?style=for-the-badge&logo=security&logoColor=white

</div>
📋 نظرة عامة
أداة Batch script مخصصة لنظام Windows تمكنك من قفل وإخفاء المجلدات الشخصية بكلمة مرور لحماية خصوصيتك.

✨ المميزات
🔒 قفل المجلدات بإعادة التسمية والإخفاء

🔓 فتح المجلدات باستخدام كلمة مرور

📁 إنشاء مجلدات آمنة تلقائياً

🎯 واجهة مستخدم بسيطة وسهلة الاستخدام

⚡ خفيف وسريع بدون تثبيت

🚀 التثبيت
الطريقة 1: التنزيل من GitHub
bash
git clone https://github.com/mlakot/locker-files.git
cd locker-files
الطريقة 2: النسخ اليدوي
أنشئ ملف جديد باسم SecureFolder.bat

انسخ المحتوى من الملف الموجود في المستودع

📖 طريقة الاستخدام
🔒 قفل المجلد
شغل الملف SecureFolder.bat

اضغط 1 لقفل المجلد

المجلد سيختفي تلقائياً من العرض

🔓 فتح المجلد
شغل الملف SecureFolder.bat

أدخل كلمة المرور (الافتراضي: mlakot)

المجلد سيظهر مجدداً للاستخدام

📁 إنشاء مجلد جديد
شغل الملف SecureFolder.bat

اضغط 2 لإنشاء مجلد Private جديد

⚙️ التخصيص
تغيير كلمة المرور
batch
# في السطر الذي يحتوي على:
if NOT %pass%== mlakot goto FAIL

# غير mlakot إلى كلمة المرور المطلوبة
if NOT %pass%== YOUR_NEW_PASSWORD goto FAIL
تغيير اسم المجلد
batch
# غير Private إلى الاسم المطلوب
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" YOUR_FOLDER_NAME
🛠️ استكشاف الأخطاء وإصلاحها
المشكلة	الحل
الملف لا يعمل	تأكد أن الامتداد هو .bat وشغله كمسؤول
نسيت كلمة المرور	استخدم commands CMD لإعادة التسمية يدوياً
المجلد غير ظاهر	فعّل عرض الملفات المخفية في File Explorer
⚠️ تحذيرات أمنية
🔐 غير كلمة المرور الافتراضية فوراً

💾 احتفظ بنسخة احتياطية من الملفات المهمة

❌ لا تشارك كلمة المرور مع任何人

📊 إحصائيات المستودع
https://img.shields.io/badge/Batch-100%2525-blue

🤝 المساهمة
نرحب بمساهماتكم! يمكنكم:

فتح Issues للمشاكل والاقتراحات

عمل Pull Requests للإضافات والتطوير

📞 الدعم والتواصل
المطور: Mlakot

التواصل: discord@mlakot

المستودع: Locker-Files

📄 الترخيص
هذا المشروع مرخص تحت MIT License.

<div align="center">
مصنوع بـ ❤️ بواسطة Mlakot

https://img.shields.io/badge/Version-1.0.0-green
https://img.shields.io/badge/Last_Updated-2025-blue

</div>
