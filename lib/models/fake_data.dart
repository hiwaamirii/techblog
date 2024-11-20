import 'package:techblog/gen/assets.gen.dart';
import 'package:techblog/models/data_models.dart';

Map homePagePosterMap = {
  "imageAsset": Assets.images.posterTest.path,
  "writer": "ملیکا عزیزی",
  "date": "یک اروز پیش",
  "title": "دوازده قدم برنامه نویسی یک دوره",
  "view": "251",
};

//blog fake data
List<HashTagModel> tagList = [
  HashTagModel(title: "جاوا"),
  HashTagModel(title: "کاتلین"),
  HashTagModel(title: "وب"),
  HashTagModel(title: "هوش مصنوعی"),
  HashTagModel(title: "IOS"),
  HashTagModel(title: "دارت"),
];

List<HashTagModel> selectedTags = [];

List<BlogModel> blogList = [
  BlogModel(
      id: 1,
      imageUrl:
          "https://api2.zoomit.ir/media/nvidia-logo-on-a-building-66ac87e16a1b3d626a35885d?w=828&q=80",
      title: "هوش مصنوعی جدید انویدیا با قدرت بیشتر از چت جی پی تی معرفی شد",
      writer: "حمیدرضا محمدی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/658738525760b195fc9b4e01?q=75",
      date: "جمعه ۲۷ مهر ۱۴۰۳",
      content: """
انویدیا هوش مصنوعی جدید خود را برای رقابت با هوش مصنوعی‌های برتر بازار معرفی کرد.
بنابر گزارش WCCF Tech، انویدیا از مدل زبانی بزرگ و متن‌باز خود با نام Llama-3.1-Nemotron-70B-Instruct رونمایی کرد؛ بنابر گفته‌ی تیم سبز، جدیدترین مدل هوش مصنوعی آموزش‌دیده‌ی این شرکت با ۷۰ میلیارد پارامتر متنوع، به‌طور محسوسی از مدل‌های فعلی مانند GPT-4o و Claude 3.5 برتر است.

انویدیا این مدل را بر اساس مدل پایه Llama-3.1-70B-Instruct متا توسعه داده و یکی از ویژگی‌های کلیدی این مدل، استفاده از تکنیکی به‌نام «مدل پاداش رگرسیونی SteerLM» است. این تکنیک به جدیدترین هوش مصنوعی انویدیا کمک می‌کند تا با استفاده از مجموعه‌داده‌های باکیفیت و الگوریتم‌های پیچیده، پاسخ‌های دقیق‌تر و مرتبط‌تری تولید کند.

انویدیا با معرفی مدل زبانی بزرگ Llama-3.1-Nemotron-70B-Instruc، گام بزرگی در جهت توسعه‌ی هوش مصنوعی برداشته است.

بنابر گفته‌ی انویدیا، در آینده‌ی نزدیک، جدیدترین مدل هوش مصنوعی این شرکت می‌تواند در حوزه‌های مختلفی مانند پردازش زبان طبیعی، تولید محتوا و پاسخگویی به پرسش‌های متنوع کاربران، مورد استفاده قرار گیرد.

هرچند هنوز عملکرد هوش مصنوعی Llama-3.1-Nemotron-70B-Instruc انویدیا را در موقعیت‌های خاص مانند وظایف پیچیده‌ی کدنویسی یا مسائل مبتنی‌بر استنتاج ندیده‌ایم، اما معیارهای اولیه نشان می‌دهند که جدیدترین مدل زبانی بزرگ این شرکت بسیار پیشرفته است.

جالب است بدانید که بر اساس اطلاعات موجود در مدل کارت Llama-3.1-Nemotron-70B-Instruct در HuggingFace، این مدل خاص توانسته مسئله‌ی «توت‌فرنگی» را حل کند که مدل‌های هوش مصنوعی سنتی قادر به حل آن نبودند. این مسئله شامل شمارش صحیح تعداد حرف R در کلمه‌‌ی توت‌فرنگی (strawberry) می‌شود؛ هوش مصنوعی‌های مشابه تعداد R را به‌خاطر ضعف شناختی، ۲ عدد تشخیص می‌دهند.""",
      views: "205"),
  BlogModel(
      id: 2,
      imageUrl:
          "https://api2.zoomit.ir/media/2023-lyriq-6712a285be1c94a528868f14?w=828&q=80",
      title: "شاسی‌بلند کادیلاک لیریک به‌عنوان خودرو سال آلمان انتخاب شد",
      writer: "حمیدرضا محمدی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/658738525760b195fc9b4e01?q=75",
      date: "جمعه ۲۷ مهر ۱۴۰۳",
      content: """
کادیلاک لیریک جایزه‌ی خودرو لوکس سال آلمان را از آنِ خود کرد.
در یک اتفاق جالب توجه، خودرو شاسی‌بلند و الکتریکی کادیلاک لیریک جایزه‌ی خودرو لوکس سال آلمان را به‌دست آورد. این موفقیت بزرگ، نشانه‌ای از پذیرش این برند آمریکایی در بازارهای اروپایی و به‌ویژه آلمان است؛ جایی که رقابت با برندهای لوکس محلی بسیار سخت است.
کادیلاک لیریک، نخستین خودرو الکتریکی این برند محسوب می‌شود که با استفاده از تکنولوژی‌های پیشرفته‌ی شرکت جنرال موتورز، ساخته شده است. طراحی این خودرو با توجه‌ به جزئیات و استفاده از مواد با کیفیت بالا، جذابیت خاصی را به‌همراه دارد. داخل خودرو با فضای وسیع و تجهیزات مدرن، تجربه‌ای کم‌نظیر را برای سرنشینان فراهم می‌کند
این خودرو با باتری‌های قدرتمند و موتورهای الکتریکی پیشرفته، عملکردی استثنایی در رانندگی ارائه می‌دهد. لیریک با هربار شارژ می‌تواند مسافتی بیش‌از ۴۰۰ کیلومتر را طی کند که این مقدار برای سفرهای طولانی بسیار مناسب است. علاوه‌بر‌این، سیستم‌های پیشرفته‌ی ایمنی و کمکی راننده، رانندگی با کادیلاک لیریک را به تجربه‌ای امن و راحت تبدیل می‌کنند.
جایزه‌ی خودرو سال آلمان توسط ۴۰ خبرنگار معتبر خودرو از سراسر آلمان اهدا می‌شود. این جایزه نه‌تنها تأییدی بر کیفیت و عملکرد عالی خودرو ۶۰ هزار دلاری کادیلاک لیریک محسوب می‌شود، بلکه نشان‌دهنده‌ی تغییر نگرش مصرف‌کنندگان و کارشناسان اروپایی، به برندهای آمریکایی است. این موفقیت می‌تواند به افزایش فروش و محبوبیت کادیلاک در بازارهای اروپایی کمک شایانی کند.""",
      views: "50"),
  BlogModel(
      id: 3,
      imageUrl:
          "https://api2.zoomit.ir/media/galaxy-a36-desig-leak-67125f6cbe1c94a528868d8c?w=828&q=80",
      title: "تصاویر گلکسی جدید لو رفت؛ خودنمایی طراحی جدید دوربین‌های پشتی",
      writer: "رضا رضائی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/6548d9973b67aa0f1ea088da?q=75",
      date: "جمعه ۲۷ مهر ۱۴۰۳",
      content: """
تصاویر فاش‌شده از گلکسی A36 طراحی کاملاً متفاوت ماژول دوربین‌ها با نسل گذشته را نشان می‌دهند.
چند وقتی است که روز‌به‌روز شایعات پیرامون گلکسی A36 بیشتر می‌شوند و اکنون پس از مشاهده شدن در بنچمارک گیک‌بنچ، تصاویر این گوشی هم فاش شدند.
به‌گزارش GizNext، طراحی دوربین‌های پشتی گلکسی A36 کاملاً با گلکسی A35 و گلکسی A34 متفاوت است و احتمالاً همه‌ی دوربین‌ها در یک ماژول عمودی قرار خواهند گرفت. فریم و بخش عقبی دستگاه مانند سابق تخت هستند و زبان طراحی Key Island همچنان خودنمایی می‌کند.
گفته می‌شود ابعاد جدیدترین گوشی سامسونگ ۱۶۲٫۶ در ۷۷٫۹ میلی‌متر خواهد بود. احتمالاً بدون برآمدگی دوربین ضخامت دستگاه حدود ۷٫۴ میلی‌متر خواهد بود؛ البته این مقدار با برآمدگی دوربین به ۹٫۶ میلی‌متر می‌رسد.
با نگاه دقیق‌تر به تصاویر فاش‌شده، طراحی جدید دوربین‌های گلکسی A36 به‌طور غیرقابل انکاری ما را به‌یاد گلکسی A11 می‌اندازد. توجه کنید که که این رندر‌ها رسمی نیستند و براساس کیس‌های منتسب‌به گوشی مورد بحث طراحی شده‌اند؛ پس ممکن است مانند محصولات کنونی بخش مربوط‌به دوربین‌ها در قاب بیضی‌شکل باشد، اما خودِ دوربین‌ها همچنان به‌صورت جداگانه و بیرون‌زده از بدنه باشند.
اگر به‌یاد داشته باشید طراحی کنونی گوشی‌های سامسونگ نخستین‌بار با گلکسی A32 آزمایش شد و بعد از استقبال کاربران به سایر دستگاه‌های این شرکت هم راه یافت. پس گلکسی A36 می‌تواند بار دیگر مانند نیاکان خود مسیر جدیدی برای طراحی میان‌رده‌ها و پرچم‌داران غول فناوری کره‌ای ایجاد کند.""",
      views: "306"),
  BlogModel(
      id: 4,
      imageUrl:
          "https://api2.zoomit.ir/media/dreamers-67120b28be1c94a528868b47?w=828&q=80",
      title:
          "برای اولین بار دو نفر در هنگام خواب با یکدیگر ارتباط برقرار کردند",
      writer: "مریم صفدری",
      writerImageUrl:
          "https://api2.zoomit.ir/media/6374fd1c807a6958d664d646?q=75",
      date: "شنبه ۲۱ مهر ۱۴۰۳",
      content:
          """شرکتی آمریکایی ادعا می‌کند موفق شده است بین دو فرد درحال دیدن رویای شفاف ارتباط برقرار کند.
شرکت نوپای REMspace که در کالیفرنیا مستقر است، ادعا می‌کند راهی برای برقراری ارتباط بین افرادی که درحال دیدن رویای شفاف هستند، پیدا کرده است. تاکنون شرکت نتایج خود را در مقاله علمی معتبری منتشر نکرده است تا ادعای خود را ثابت کند، بنابراین برای باور چنین ادعاهایی، باید منتظر باشیم تا آزمایش‌های آن‌ها مورد بررسی قرار گرفته و تایید شود.
مایکل رادوگا، بنیان‌گذار REMspace می‌گوید فرایند بررسی نتایج آن‌ها توسط کارشناسان و انتشار آن در مجله‌ای معتبر احتمالا شش تا دوازده ماه طول می‌کشد و او امیدوار است سال آینده مقاله‌ای علمی دراین‌باره منتشر کند.
آنچه درحال‌حاضر در دست داریم، بیانیه‌ای مطبوعاتی است که در آن، شرکت ادعا می‌کند برای اولین بار در ۲۴ سپتامبر توانسته است بین دو فرد که درحال دیدن رویای شفاف بوده‌اند، گفتگویی موفقیت‌آمیز برقرار کند.
طبق پستی که رادوگا در ایکس منتشر کرده، موفقیت آن‌ها در تاریخ ۸ اکتبر نیز تکرار شده است. درحالی‌که این گفتگوها بسیار ساده بود و صرفا شامل یک کلمه می‌شد، پژوهشگران می‌گویند پژوهش آن‌ها می‌تواند راه را برای ارتباطات پیچیده‌تر رویا به رویا هموارتر کند.
رویای شفاف یا آگاهانه به حالتی اشاره دارد که در آن فرد به‌طور کامل از اینکه خواب است، آگاهی دارد و در برخی موارد شامل توانایی کنترل جنبه‌های خاصی از دنیای خیالی خود می‌شود.
در چند سال گذشته، رادوگا و شرکتش با تبلیغات فراوان آزمایش‌هایی را انجام داده‌اند که به‌نظر می‌رسد تلاش برای کشف پتانسیل رویاهای شفاف باشد. برخی از دانشمندان معتقدند این رویاها ممکن است به افراد کمک کند مشکلات سلامت روان خود را حل کنند یا مهارت‌های جدیدی بیاموزند.
در تصمیمی عجیب، رادوگا که جراح مغز و اعصاب دارای صلاحیت نیست، حتی مدعی است تراشه‌ای را در مغز خود کاشته و این فرایند با قراردادن وی در آستانه مرگ، پیامدهای منفی برای سلامتی‌اش داشته است. اطلاعات کمی دراین‌باره موجود است که هدف رادوگا از انجام این عمل افراطی چه بوده و شرکت هنوز داده‌ای درمورد این اقدام خطرناک او ارائه نکرده است.
البته شرکت REMspace در طول چند سال گذشته مقاله‌های علمی معتبری منتشر کرده است؛ ازجمله مقاله‌ای که به توصیف آزمایشی پرداخته که شرکت‌کنندگان در آن موفق شدند درهنگام خواب و دیدن رویای شفاف، خودرویی مجازی را کنترل کنند.
شرکت همچنین ادعا می‌کند که درحال کار روی زبانی ویژه برای کسانی است که رویای شفاف می‌بینند. این زبان که رمیو (Remmyo) نامیده می‌شود، قرار است با استفاده از نوار عصب و عضله که حرکات ریز عضلات افراد درحال خواب را تشخیص می‌دهد، قابل درک باشد، گرچه این روش تاکنون نتایج ضدونقیضی حاصل کرده است.
شرکت در بیانیه مطبوعاتی مربوط به تازه‌ترین آزمایش خود می‌گوید پژوهشگران آن‌ها فعالیت مغزی دو فرد خواب را از دور دنبال کردند. وقتی فعالیت مغزی اولین شرکت‌کننده نشان داد که او درحال دیدن رویای شفاف است، پژوهشگران یک کلمه از زبان رمیو را ازطریق ایرباد به او منتقل کردند. گفته می‌شود فرد درحال دیدن خواب این واژه را در رویای شفاف خود تکرار کرد و پاسخ او ضبط و ذخیره شد. وقتی شرکت‌کننده‌ی دوم وارد رویای شفاف شد، کلمه‌ی ضبط‌شده به او منتقل شد و وی پس از بیدار شدن، آن واژه را تایید کرد. 
راودگا در بیانیه‌ای در مورد این نتایج تأییدنشده، اعلام کرد: «در گذشته ارتباط در خواب مانند داستان علمی‌تخیلی به‌نظر می‌رسید، اما در آینده این فناوری به قدری رایج می‌شود که تصور زندگی بدون آن دشوار است.» درعین‌حال، او می‌گوید دستاوردهای شرکتش کاربردهای تجاری بی‌شماری را به دنبال خواهد داشت و نحوه‌ی تفکر ما را درباره ارتباط و تعامل در دنیای خواب تغییر می‌دهد.
توجه به این نکته ضروری است که یافته‌ها هنوز تحت داروی همتا قرار نگرفته است، بنابراین تا زمانی که توسط جامعه علمی تایید نشود، ایده‌ی ارتباط در خواب همچنان درحد تئوری باقی می‌ماند.""",
      views: "21"),
  BlogModel(
      id: 5,
      imageUrl:
          "https://api2.zoomit.ir/media/blusky-664ed74d4b10d5a6894b7003?w=828&q=80",
      title: "تغییرات جدید ایکس، کاربران را به سمت بلواسکای فراری داد",
      writer: "حمیدرضا محمدی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/658738525760b195fc9b4e01?q=75",
      date: "جمعه ۲۷ مهر ۱۴۰۳",
      content:
          """بلواسکای پس از تغییر سیاست بلاک‌کردن در ایکس، توانست بیش از ۵۰۰ هزار کاربر جدید جذب کند.
بنابر گزارش ورج، شبکه اجتماعی بلواسکای، اخیراً در پی تغییرات سیاست‌های ایکس، شاهد افزایش چشمگیری در تعداد کاربران خود بوده است. در ۲۴ ساعت گذشته، این پلتفرم توانست بیش از ۵۰۰ هزار کاربر جدید جذب کند. این افزایش ناگهانی پس‌از اعلان ایکس درباره‌ی تغییرات در سیستم بلاک کردن کاربران صورت گرفته است.
چندی پیش ایکس، تغییراتی را در سیستم بلاک کردن خود اعلام کرد که طبق آن افراد بلاک‌شده می‌توانند پست‌های عمومی فرد بلاک‌کننده را مشاهده کنند؛ ولی نمی‌توانند با آن‌ها تعامل داشته باشند. هرچند از نظر ایلان ماسک این سیاست جدید می‌توانند در مواردی کمک‌کننده باشد؛ اما این تغییرات با نقدهای زیادی روبه‌رو شده و حتی حامیان ماسک نیز نگرانی‌های خود را درباره‌ی امنیت کاربران ابراز کرده‌اند.
شبکه اجتماعی بلواسکای به‌عنوان یک پلتفرم جدید و نوآورانه، توانست از این فرصت استفاده کند و کاربران ناراضی از ایکس را به‌سوی خود جذب کند. این پلتفرم به‌عنوان یک شرکت عمومی مفید (Public Benefit Corporation) ثبت شده و خود را به‌عنوان یک شبکه اجتماعی غیرمتمرکز معرفی می‌کند. این ویژگی‌ها باعث شده تا بسیاری از کاربران بلواسکای را به‌عنوان یک جایگزین امن‌تر و شفاف‌تر برای ایکس درنظر بگیرند.
در پی این تغییرات، امروز بلواسکای با افتخار اعلام کرد که اکنون بیش‌از ۱۱ میلیون کاربر فعال دارد. این رشد سریع نشان‌دهنده‌ی توانایی این پلتفرم در جذب کاربران جدید و ارائه‌ی یک تجربه‌ی کاربری بهتر نسبت‌به رقبای خود است. بلواسکای به کاربران خود امکان می‌دهد تا با امنیت بیشتری به اشتراک‌گذاری محتوا بپردازند و از ویژگی‌های پیشرفته‌ای بهره‌مند شوند.
از دیدگاه فنی، بلواسکای از معماری غیرمتمرکز بهره می‌برد که به کاربران کنترل بیشتری بر داده‌هایشان می‌دهد. این پلتفرم با استفاده از تکنولوژی‌های پیشرفته و پروتکل‌های امنیتی قوی، تلاش می‌کند تا تجربه‌ای امن و بدون دخالت‌های خارجی را برای کاربران فراهم کند. همچنین تیم توسعه‌دهنده‌ی این شبکه اجتماعی به‌طور مستمر درحال بهبود و ارتقاء پلتفرم خود، براساس نیازهای کاربران است.
در نهایت، رشد سریع بلواسکای پس از تغییرات سیاست‌های ایکس، نشان‌دهنده‌ی تقاضای بالای کاربران برای یک شبکه اجتماعی امن‌ و شفاف‌ است. این پلتفرم با ارائه‌ی ویژگی‌های جدید و بهبود‌های مستمر، تلاش می‌کند تا به یکی از پیشروان در دنیای شبکه‌های اجتماعی غیر متمرکز تبدیل شود.""",
      views: "932"),
  BlogModel(
      id: 6,
      imageUrl:
          "https://api2.zoomit.ir/media/redmi-k70-pro-logo-redmi-65abbcf0e94ec75e26869ed3?w=828&q=80",
      title:
          "پرچمدار کامپکت جدید ردمی نمایشگر ۶٫۳ اینچ و باتری پرظرفیت خواهد داشت",
      writer: "رضا رضائی",
      writerImageUrl:
          "https://www.zoomit.ir/profile/3bafe781-c0cc-413f-a8be-f4ca7aa6e22b/",
      date: "جمعه ۲۷ مهر ۱۴۰۳",
      content:
          """ظاهراً ردمی روی یک پرچم‌دار با باتری ۶۰۰۰ میلی‌آمپرساعتی کار می‌کند.
به‌احتمال زیاد ردمی K80 و ردمی K80 پرو در ماه نوامبر (آبان و آذر) معرفی می‌شوند. به‌نظر می‌رسد ردمی می‌خواهد علاوه‌بر دستگاه‌های نام‌برده، یک پرچم‌دار کامپکت هم به بازار عرضه کند.
براساس اطلاعات فاش‌شده در ویبو، ردمی درحال برنامه‌ریزی برای معرفی یک پرچم‌دار کامپکت جدید با صفحه‌نمایش ۶٫۳ اینچی و باتری پرظرفیت ۶۰۰۰ میلی‌آمپرساعتی است. احتمالاً این گوشی از شارژ بی‌سیم و دوربین تله‌فوتو بی‌بهره خواهد بود.
گفته می‌شود پنج تولید‌کننده‌ی برتر گوشی‌های هوشمند از جمله ردمی درحال بررسی اضافه‌کردن پرچم‌دار‌‌های کامپکت به محصولات خود هستند. ویوو هم مدتی پیش گوشی ویوو X200 پرو مینی را به‌عنوان پرچم‌دار کامپکت معرفی کرد.
هنوز مشخص نیست که جدیدترین گوشی شیائومی متعلق به کدام سری خواهد بود؛ اما انتظار می‌رود با یک دستگاه از خانواده‌ی K یا توربو طرف باشیم. اگر این دستگاه عضوی از خانواده‌ی ردمی K80 باشد، احتمالاً در همان ماه نوامبر معرفی خواهد شد.
اطلاعات دقیقی درباره‌ی مشخصات سخت‌افزاری و قیمت گوشی مذکور دردسترس نیست و برای جزئیات بیشتر باید تا زمان رونمایی رسمی صبر کرد.
""",
      views: "433"),
  BlogModel(
      id: 7,
      imageUrl:
          "https://api2.zoomit.ir/media/iphone-16-pro-max-fiour-exclusive-zoomit-photo-66eec69d377ff4d41138d00e?w=828&q=80",
      title: "کاربران آیفون ۱۶ از مصرف چشمگیر باتری در iOS 18 می‌گویند",
      writer: "پیام هدایتی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/65fd8f51240d3c83068f94b7?q=75",
      date: "جمعه ۲۷ مهر ۱۴۰۳",
      content:
          """برخی از کاربران آیفون ۱۶ از مصرف چشمگیر باتری در iOS18 شکایت دارند.
براساس پست‌های متعدد در انجمن آنلاین اپل و ردیت، عده‌ای از کاربران آیفون ۱۶ و آیفون ۱۶ پرو از مصرف چشمگیر باتری در iOS 18 شکایت دارند. بیشتر گزارش‌های تخلیه‌ی باتری به کاربران آیفون ۱۶ مربوط می‌شود؛ اما ممکن است نسل‌‌های قبلی که آپدیت iOS 18 را دریافت کردند نیز با چنین مشکلی مواجه باشند.
مانی که iOS 18‌ در مرحله‌ی بتا بود، گزارش‌های بسیاری از تخلیه‌ی زودهنگام باتری آیفون‌ها در انجمن مک‌رومرز مطرح شد و اکنون با انتشار رسمی iOS 18 و عرضه‌ی سری آیفون ۱۶، موج جدیدی از این گزارش‌ها ثبت شده‌اند. طبق این شکایات، باتری آیفون ۱۶ حتی زمانی که گوشی در حالت آماده‌به‌کار به سر می‌برد، به‌طور قابل‌توجهی کاهش می‌یابد.
یکی از کاربران می‌گوید باتری آیفون ۱۶ پرو بدون اینکه استفاده‌ی چندانی از آن کند، در نصف روز از ۱۰۰ درصد به ۶۰ درصد کاهش پیدا کرده است. او می‌گوید آیفونش نیاز به تعمیر دارد و تاکید می‌کند که از تعویض آیفون ۱۵ پرو خود با آیفون ۱۶ پرو پشیمان است.
کاربر دیگری که آیفون ۱۵ پرو مکس خود را با آیفون ۱۶ پرو مکس تعویض کرده است، می‌گوید با وجود تغییر ندادن تنظیمات بین دو نسل از آیفون‌های پرو مکس، عملکرد آیفون جدیدش ناامیدکننده است.
در برخی موارد، هنگامی که آیفون درحالت آماده‌به‌کار قرار گرفته، ممکن است فعالیت‌های پس‌زمینه سبب تخلیه‌ی باتری شوند؛ اما نه در حدی که برای کاربران چندان محسوس باشد. در واقع بیشترین مصرف باتری باید هنگام استفاده از آیفون‌ها اتفاق بیفتد.
کاربر دیگری می‌گوید با بررسی آیفون ۱۶ پرو خود متوجه شده که فعالیت‌های پس‌زمینه به طرز دیوانه‌واری درحال اجرا هستند؛ او می‌گوید در مدت ۴ ساعت و ۲۰ دقیقه باتری آیفونش ۱۱ درصد کاهش یافته؛ یعنی در حالت آماده‌به‌کار از ۷۰ درصد به ۵۹ درصد رسیده است.
شکایات مشابهی در سایر انجمن‌ها ازجمله ردیت مطرح شده است و ظاهراً هر روز به تعداد آن‌ها افزوده می‌شود. کاربری در ردیت می‌گوید: «من آیفون خود را از ۱۲ به ۱۶ پرو ارتقاء دادم؛ تنها به این دلیل که مشکلات باتری و اسپیکر را حل کنم. آیفون ۱۶ باتری بهتر و شارژدهی بیشتری دارد، اما دیده‌ام که باتری آن حدود ۱۰ تا ۱۵ درصد در طول شب و در حالت آماده‌به‌کار تخلیه شد.»
کاربر دیگری ادعا می‌کند آزمایشی بین آیفون ۱۶ پرو و ۱۴ پرو انجام داده و از هردو به یک‌ شکل استفاده کرده است؛ در نهایت عمر باتری آیفون ۱۶ پرو ظرف ۳۶ ساعت به ۵۸ درصد کاهش یافت؛ درحالی که آیفون ۱۴ پرو به ۸۵ درصد رسید.
تشخیص مشکلات تخلیه‌ی باتری دشوار است؛ چون عادات استفاده از آیفون در افراد مختلف و در طول روز متفاوت است. کاربران شاکی سعی کردند این مشکل را از طریق خاموش‌کردن پروموشن (حالت ۱۲۰ هرتز)، غیرفعال کردن نمایشگر همیشه‌روشن، خاموش کردن بازخوانی برنامه‌های پس‌زمینه، حذف ویجت‌ها، خاموش کردن گوشی و بازنشانی کامل آیفون حل کنند. مشکل باتری برخی افراد با این روش‌ها حل شد؛ اما برای بسیاری از کاربران همچنان پابرجا است""",
      views: "543"),
  BlogModel(
      id: 8,
      imageUrl:
          "https://api2.zoomit.ir/media/infinix-inbook-air-pro-plus-front-back-pannel-view-67122421be1c94a528868bec?w=828&q=80",
      title:
          "لپ‌تاپ میان‌رده ۲۰۲۴ اینفینیکس با نمایشگر اولد و پردازنده نسل ۱۳ معرفی شد",
      writer: "پویا رسولی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/66e0061d312ca11896e53dcb?q=75",
      date: "جمعه ۲۷ مهر ۱۴۰۳ ",
      content:
          """اینفینیکس لپ‌تاپ جدیدی با نمایشگر اولد، پردازنده نسل ۱۳ اینتل و قیمتی رقابتی معرفی کرد.
اینفینیکس لپ‌تاپ میان‌رده‌ی +INBOOK AIR Pro را برای بازار هند معرفی کرد. این محصول که در دسته‌ی لپ‌تاپ‌های باریک و سبک قرار می‌گیرد، تنها یک کیلوگرم وزن دارد و ضخامت بدنه‌ی آن در باریک‌ترین ناحیه به ۴٫۵ میلی‌متر می‌رسد.
لپ‌تاپ +INBOOK AIR Pro از پردازنده‌ی نسل ۱۳ اینتل Core i5-1334U قدرت می‌گیرد که عملکردی سریع و روان در انجام وظایف مختلف ازجمله امور چندوظیفگی را ارائه می‌دهد.
لپ‌تاپ جدید اینفینیکس از نمایشگر ۱۴ اینچی اولد با وضوح 2.8K، نسبت تصویر ۱۶:۱۰، حداکثر روشنایی ۴۴۰ نیت و نرخ نوسازی ۱۲۰ هرتزی بهره می‌برد. این نمایشگر به‌لطف پوشش ۱۰۰ درصد از طیف رنگی sRGB و DCI-P3، تصاویری واضح و رنگ‌هایی زنده و جذاب را به‌نمایش می‌گذارد.
لپ‌تاپ +INBOOK AIR Pro از وای‌فای ۶ و بلوتوث ۵٫۲ پشتیبانی می‌کند و از درگاه‌های ارتباطی متنوعی ازجمله سه درگاه USB-C، درگاه USB-A، درگاه HDMI، اسلات کارت microSD و جک ۳٫۵ میلی‌متری صدا بهره می‌برد.
جدیدترین لپ‌تاپ اینفینیکس با ۱۶ گیگابایت رم LPDDR4X و ۵۱۲ گیگابایت فضای ذخیره‌سازی SSD عرضه می‌شود. انرژی لپ‌تاپ را باتری ۵۷ وات‌ساعتی با پشتیبانی از شارژ سریع ۶۵ واتی تأمین می‌کند که از طریق درگاه USB-C شارژ می‌شود.
کیبورد لپ‌تاپ +INBOOK AIR Pro از کلید اختصاصی Microsoft Copilot بهره می‌برد. وب‌کم مادون قرمز لپ‌تاپ نیز وضوح +FHD دارد و از Windows Hello پشتیبانی می‌کند.""",
      views: "99"),
  BlogModel(
      id: 9,
      imageUrl:
          "https://api2.zoomit.ir/media/huawei-nova-13-green-in-hand-670e64fd8206d812c63a7f92?w=828&q=80",
      title: "گوشی نوا ۱۳ پرو هواوی با عملکردی ناامیدکننده در گیک‌بنچ رؤیت شد",
      writer: "محمد دزفولیان",
      writerImageUrl:
          "https://api2.zoomit.ir/media/64983380bd14b86a37a2c7d4?q=75",
      date: "شنبه ۲۸ مهر ۱۴۰۳",
      content: """امتیاز گیک‌بنچ و برخی مشخصات گوشی نوا ۱۳ پرو هواوی فاش شد.
یکی از افشاگران برخی از مشخصات گوشی نوا ۱۳ پرو را به‌همراه نتایج بنچمارک آن به‌اشتراک گذاشته است که امتیاز نه‌چندان امیدوارکننده‌ای را نشان می‌دهد.
طبق اطلاعات پایگاه داده‌ی گیک‌بنچ، نوا ۱۳ پرو امتیازهای تک‌هسته‌ای و چندهسته‌ای ۹۹۷ و ۲٬۹۰۰ را کسب کرد که بسیار کمتر از نسل قبلی آن است. در مقام مقایسه، نوا ۱۲ پرو در همین آزمون به‌ترتیب ۱٬۳۰۰ و ۴٬۱۰۰ امتیاز را به‌دست آورد.
به‌گفته‌ی دیجیتال‌چت‌استیشن در ویبو، نوا ۱۳ پرو از تراشه‌ی میان‌رده‌ی Kirin 8000 بهره می‌برد. درمقابل، نسل قبلی آن از پردازنده‌ی قوی‌تر Kirin 9000s، همان تراشه‌ی به‌کاررفته در سری پرچم‌دار میت ۶۰، استفاده کرد.
گوشی تاشدنی هواوی نوا فلیپ که در تابستان امسال رونمایی شد، از کرین ۸۰۰۰ استفاده می‌کند. این تراشه‌ی هشت‌هسته‌ای یک هسته‌ی Cortex-A77 با فرکانس ۲٫۴ گیگاهرتز و سه هسته‌ی Cortex-A77 با فرکانس ۲٫۱۹ گیگاهرتز و چهار هسته‌ی کم‌مصرف Cortex-A55 با فرکانس ۱٫۸ گیگاهرتز دارد.
بر‌اساس جدول گیک‌بنچ، کرین ۸۰۰۰ با ۱۲ گیگابایت رم همراه شده است. علاوه‌بر‌این، گوشی نوا ۱۳ پرو صفحه‌نمایشی با وضوح 1.5K و لبه‌های خمیده دارد که با نسل قبلی‌اش تفاوتی ندارد. اندازه‌ی نمایشگر هنوز مشخص نشده است.
افشاگر مذکور ادعا کرد که نوا ۱۳ پرو از رابط کاربری HarmonyOS 4.2 استفاده می‌کند و رابط کاربری جدید HarmonyOS Next در آن وجود نخواهد داشت. ناگفته نماند که این گوشی می‌تواند از اتصال ماهواره‌ای Beidou و شارژ سریع ۱۰۰ وات پشتیبانی کند.""",
      views: "171"),
  BlogModel(
      id: 10,
      imageUrl:
          "https://api2.zoomit.ir/media/vivo-y200-back-panel-664c5c5c772792639debc81d?w=828&q=80",
      title: "ویوو برای نخستین‌بار در بازار هند از شیائومی و سامسونگ پیش افتاد",
      writer: "حمیدرضا محمدی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/658738525760b195fc9b4e01?q=75",
      date: "شنبه ۲۸ مهر ۱۴۰۳",
      content:
          """فروش ویوو در بازار هند برای نخستین‌بار از شیائومی و سامسونگ عبور کرد.
بنابر گزارش Canalys، ویوو در سه‌ماهه سوم سال ۲۰۲۴ به‌عنوان پادشاه بی‌رقیب بازار گوشی‌های هوشمند هند ظاهر شد و توانست از سهم بازار شیائومی و سامسونگ در این کشور عبور کند.
ویوو در این دوره ۹٫۱ میلیون دستگاه با سهم بازار ۱۹ درصد فروخت که جهشی چشمگیری درمقایسه‌با سهم ۱۷ درصدی آن در سه‌ماهه سوم سال ۲۰۲۳ است. در‌حالی‌که ویوو صدرنشینی خود در بازار هند را جشن می‌گیرد، شیائومی و سامسونگ با واقعیت متفاوتی روبه‌رو هستند.
شیائومی در سه‌ماهه سوم سال ۲۰۲۴، با فروش ۷٫۸ میلیون دستگاه گوشی شیائومی و سهم بازار ۱۷ درصد در جایگاه دوم قرار گرفت. اگرچه این رقم در‌مقایسه‌با سال گذشته اندکی افزایش یافته است، سهم بازار آن به‌طور کلی ۱ درصد کاهش یافته است.
موقعیت سامسونگ در هند، داستانی از جنس کاهش مداوم را روایت می‌کند. این غول کره‌ای که زمانی صدرنشین  بازار هند بود، در سه‌ماهه سوم سال ۲۰۲۴ با فروش ۷٫۵ میلیون دستگاه گوشی سامسونگ، تنها ۱۶ درصد سهم بازار را ازآنِ خود کرد. این کاهش درمقایسه‌با سهم بازار ۱۸ درصدی و فروش ۷٫۹ میلیون دستگاه در دوره مشابه سال گذشته بررسی می‌شود. به‌نظر می‌رسد سامسونگ در بازار رقابتی هند، به‌طور مداوم در‌حال از‌دست‌دادن جایگاه خود است.
به‌طور کلی، شیائومی و سامسونگ برای حفظ سهم بازار خود در هند با مشکلات جدی مواجه هستند. افزایش رقابت و تغییرات سریع در فناوری و انتظارات زیاد مصرف‌کنندگان، ازجمله این مشکلات هستند. این دو شرکت برای حفظ جایگاه خود باید نوآوری بیشتری کنند و کیفیت محصولاتشان را بهبود ببخشند و خدمات پس‌از‌فروش بهتری ارائه دهند.
برند اوپو نیز با ۶٫۳ میلیون دستگاه گوشی اوپو فروخته‌شده و سهم بازار ۱۳ درصدی، رشد درخورتوجه ۴۳ درصدی را درمقایسه‌با سال گذشته تجربه و بدین‌ترتیب، جایگاه چهارم را ازآنِ خود کرد. درمقابل، ریلمی با فروش ۵٫۳ میلیون دستگاه و سهم بازار ۱۱ درصدی، به‌طور کلی کاهش ۸ درصدی فروش را درمقایسه‌با سه‌ماهه سوم سال ۲۰۲۳ تجربه کرد و جایگاه پنجم تعداد گوشی‌های فروخته‌شده در بازار هند را به‌دست آورد.
به‌طور‌ کلی، بازار گوشی‌های هوشمند هند رشد سالم ۹ درصد در سال را تجربه کرد و در سه‌ماهه سوم سال ۲۰۲۴ به مجموع ۴۷٫۱ میلیون دستگاه فروخته‌شده رسید. تحلیلگران پیش‌بینی می‌کنند که این بازار در سال ۲۰۲۵ نیز به رشد متوسط تک‌رقمی خود ادامه خواهد داد.""",
      views: "321"),
  BlogModel(
      id: 11,
      imageUrl:
          "https://api2.zoomit.ir/media/vivo-x200-pro-670d41fee864343acf334e8f?w=828&q=80",
      title: "سری X200 رکورد فروش گوشی‌های ویوو را جابه‌جا کرد",
      writer: "مجتبی بوالحسنی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/6593b139283a066c4577fff8?q=75",
      date: "شنبه ۲۸ مهر ۱۴۰۳",
      content:
          """فروش بسیار زیاد سر ویوو X200 از استقبال چشمگیر خریداران از این گوشی‌ها حکایت می‌کند
پرچم‌داران جدید ویوو X200، پس‌از عرضه به بازار توجهات زیادی را به خود جلب کردند. ویوو اعلام کرد فروش سری X200 فقط در روز اول عرضه حدود ۳۰۰ میلیون دلار بوده است که رکورد بی‌سابقه‌ای برای این شرکت چینی به‌حساب می‌آید.
باید اشاره کنیم که آمار فروش سری X200 فقط شامل دو مدل ویوو X200 استاندارد و ویوو X200 پرو می‌شود. قیمت گوشی مذکور برای نسخه‌ی استاندارد از حدود ۶۱۵ دلار شروع می‌شود و مدل پرو نیز با قیمت پایه‌ی حدود ۷۴۷ دلار به‌دست مشتریان می‌رسد.
ویوو X200 پرو مینی در ۲۵ اکتبر (۴ آبان ۱۴۰۳) عرضه خواهد شد و باتوجه‌به تقاضای اولیه‌ای فراوانی که برای این سری وجود دارد، به‌نظر می‌رسد این مدل از گوشی ویوو نیز در زمان عرضه با استقبال چشمگیری مواجه شود.
اگرچه تعداد دقیق واحدهای فروخته‌شده‌ی ویوو X200 را نمی‌دانیم؛ اما حجم زیاد فروش آن‌ها، از استقبال درخورتوجه خریداران حکایت می‌کند. این موفقیت می‌تواند ناشی از چند عامل باشد. اولین عامل استفاده از تراشه‌ی جدید دیمنسیتی ۹۴۰۰ مدیاتک است که برای اولین‌بار در گوشی‌های سری X200 ویوو به‌کار گرفته شد. علاوه‌بر‌این، ویوو توجه ویژه‌ای به عملکرد دوربین این سری نشان داده است.
ویوو برای دوربین‌های سفارشی و تنظیمات تصویر گوشی‌های سری X200 با شرکت معروف زایس همکاری کرده و از پردازنده‌ی تصویر اختصاصی خود با نام V3 Plus برای بهبود پردازش عکس بهره گرفته است. مدل پرو از دوربین اصلی ۵۰ مگاپیکسلی با حسگر سونی LYT-818 و لنزی با گشودگی دیافراگم f/1.57 و دوربین تله‌فوتو غول‌پیکر ۲۰۰ مگاپیکسلی و دوربین فوق‌عریض ۵۰ مگاپیکسلی بهره می‌برد.
مدل استاندارد ویوو X200 از دوربین اصلی ۵۰ مگاپیکسلی با حسگر سونی IMX921 بهره می‌برد که درکنار آن دوربین تله‌فوتو ۵۰ مگاپیکسلی با حسگر سونی IMX882 و دوربین فوق‌عریض ۵۰ مگاپیکسلی قرار گرفته‌اند. اگرچه این مجموعه به‌اندازه‌ی دوربین‌های مدل پرو چشمگیر به‌نظر نمی‌رسد، برای اکثر کاربران کاملاً کافی نیست.""",
      views: "910"),
  BlogModel(
      id: 12,
      imageUrl:
          "https://api2.zoomit.ir/media/2022-4-google-colorful-logo-boy-face-dark-638c69198615ae71282b157c?w=828&q=80",
      title:
          "نفس راحت گوگل؛ حکم دادگاه تعلیق شد و درهای پلی استور «فعلاً» بسته می‌مانند",
      writer: "مبین احمدی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/6405c2833a2fd9b17caa55eb?q=75",
      date: "شنبه ۲۸ مهر ۱۴۰۳",
      content:
          """با تعلیق حکم اولیه‌ی دادگاه، خطر از بیخ گوش گوگل گذشت و این شرکت فعلاً می‌تواند ساختار پلی استور را دست‌نخورده باقی بگذارد.
گوگل موفق شد به پیروزی کوچک، اما پر‌اهمیتی در نبرد حقوقی با اپیک گیمز دست پیدا کند. هفته‌ی گذشته، این شرکت از جیمز دوناتو، قاضی پرونده، درخواست کرده بود که ضرب‌الأجل ۱ نوامبر (۱۱ آبان) برای اجرایی‌شدن تغییرات پلی استور را به تأخیر بیندازد و برخلاف انتظار، قاضی دوناتو با این درخواست موافقت کرد.
بر‌اساس گزارش وب‌سایت ورج، قاضی پرونده تمامی بخش‌های حکم اولیه به‌جز یک بخش را به حالت تعلیق درآورده است تا گوگل زمان کافی در‌اختیار داشته باشد. این تصمیم شاید در نگاه اول چندان مهم به‌نظر نرسد؛ اما بر‌اساس حکم دادگاه، گوگل ممکن است تا سال‌ها به بازکردن درهای پلی استور مجبور نشود.
در اواخر سال گذشته‌ی میلادی، هیئت‌منصفه‌ی دادگاه اعلام کرد که فروشگاه آنلاین گوگل به پلتفرمی انحصارگرا تبدیل شده است و باید میزبان تغییراتی چشمگیر شود. گوگل افزون‌بر حکم قاضی دوناتو، حکم صادرشده‌ی هیئت‌منصفه را نیز به دادگاه تجدید‌نظر برده است.
تعلیق موقتی حکم قاضی دوناتو در نگاه اول زمان نسبتاً کمی به گوگل می‌دهد؛ اما شاید بعداً شاهد تمدید آن باشیم. بر‌اساس گزارش‌ها، قاضی دوناتو گفته است که انتظار دارد دادگاه استیناف حوزه‌ی نهم ایالات متحده، تعلیق حکم را تمدید کند. خود قاضی دوناتو از انجام چنین کاری خودداری کرده است.
یکی از بخش‌های مهم از حکم اولیه‌ی قاضی دوناتو همچنان باید تا یازدهم آبان اجرایی شود. از آن تاریخ تا ۱ نوامبر ۲۰۲۷ (۱۰ آبان ۱۴۰۶) گوگل اجازه ندارد ازطریق امضای قرارداد با اپراتورها یا تولیدکنندگان گوشی‌های هوشمند، از نصب پیش‌فرض فروشگاه‌های آنلاین روی دستگاه‌ها جلوگیری کند.
درصورتی‌که حکم قاضی دوناتو تعلیق نمی‌شد، گوگل مجبور بود از یازدهم آبان امسال اجبار به استفاده از سیستم Play Billing را لغو کند و مشوق‌های توسعه‌دهندگان برای ترغیب آنان به استفاده از پلی استور را از بین ببرد.
قاضی دوناتو در ابتدا گفته بود گوگل برای اصلاح ساختار پلی استور تنها یک ماه زمان دارد؛ اما گوگل از دادگاه درخواست کرد که همچون اپل فرصت ۹۰ روزه در‌اختیار بگیرد. به‌لطف تعلیق حکم، گوگل حالا می‌تواند تا حد امکان اعمال تغییرات پلی استور را به تعویق بیندازد.""",
      views: "218"),
  BlogModel(
      id: 13,
      imageUrl:
          "https://api2.zoomit.ir/media/honor-magic-7-6713ac671d121a0de65af74d?w=828&q=80",
      title: "طراحی آنر مجیک ۷ و مجیک ۷ پرو در رندرهای لورفته به‌نمایش درآمد",
      writer: "مجتبی بوالحسنی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/6593b139283a066c4577fff8?q=75",
      date: "شنبه ۲۸ مهر ۱۴۰۳",
      content:
          """رندرهای جدید سری آنر مجیک ۷، طراحی دوربین و قاب پشتی این گوشی‌ها را به‌تصویر می‌کشند.
گوشی‌های هوشمند سری مجیک ۷ آنر اواخر این ماه در چین معرفی می‌شوند. مدیرعامل آنر قبلاً با انتشار تصویری، نمای جلویی گوشی‌ها را به‌نمایش گذاشته بود؛ اما حالا به‌لطف تصاویر جدیدی که به بیرون درز کرده است، می‌توانیم نگاهی به طراحی پنل پشتی و ظرفیت‌های فضای ذخیره‌سازی آن‌ها بیندازیم.
در رندرهای مدل استاندارد آنر مجیک ۷ و مدل قوی‌تر مجیک ۷ پرو، بخش برجسته‌ی پنل پشتی را می‌بینیم که جایگاه ماژول دوربین است و از طراحی جزیره‌ای هشت‌ضلعی با لبه‌هایی به رنگ نقره‌ای یا خاکستری بهره می‌برد. در این رندرها، نسخه‌ای با فریم طلایی نیز دیده می‌شود. سیستم دوربین پشتی آنر مجیک ۷ میزبان شامل سه دوربین می‌شود و یک فلش LED نیز کنار آن وجود دارد. در بخش پایینی پنل پشتی گوشی نیز شاهد برند آنر هستیم.
براساس گفته‌های افشاگر نام‌آشنا Digital Chat Station، مدل استاندارد مجیک ۷ احتمالاً در ظرفیت‌های ۵۱۲ گیگابایت و یک ترابایت عرضه خواهد شد و رنگ‌بندی آن نیز شامل طلایی، سفید، مشکی، آبی و خاکستری می‌شود.
طبق گزارش‌های قبلی، گوشی آنر مدل مجیک ۷ پرو احتمالاً در ظرفیت‌های ۲۵۶ گیگابایت و ۵۱۲ گیگابایت و یک ترابایت در‌دسترس قرار خواهد گرفت و رنگ‌بندی آن نیز شامل سفید، مشکی، آبی و خاکستری می‌شود.
انتظار می‌رود نسخه‌ی جدید رابط کاربری آنر با نام MagicOS 9.0 در ۲۳ اکتبر (۲ آبان ۱۴۰۳) معرفی شود و پس‌‌از‌آن در ۳۰ اکتبر (۹ آبان ۱۴۰۳)، شاهد معرفی رسمی سری آنر مجیک ۷ باشیم. اگرچه رویداد معرفی سری آنر مجیک ۷ هنوز به‌طور رسمی تأیید نشده است، انتظار می‌رود این محصولات از مشخصات فنی قدرتمند مثل پردازنده‌ی قدرتمند اسنپدراگون ۸ الیت بهره ببرند.
سیستم دوربین پشتی آنر مجیک ۷ احتمالاً شامل دوربین اصلی ۵۰ مگاپیکسلی با حسگر Omnivision OV50H و دوربین تله‌فوتو ۵۰ مگاپیکسلی با حسگر سونی IMX882 و دوربین سوم با وضوح بین ۵۰ تا ۲۰۰ مگاپیکسل با حسگر سامسونگ HP3 خواهد بود.
از دیگر مشخصات مورد‌انتظار آنر مجیک ۷ می‌توان به نمایشگر OLED با وضوح 1.5K برای مدل استاندارد و صفحه‌نمایش OLED با وضوح 2K برای مدل پرو اشاره کرد. همچنین، به‌نظر می‌رسد مجیک ۷ پرو به باتری ۵,۸۰۰ میلی‌آمپرساعتی با قابلیت پشتیبانی از شارژ سیمی ۱۰۰ وات و شارژ بی‌سیم ۶۶ وات مجهز خواهد بود.
به‌احتمال زیاد هر دو مدل آنر مجیک ۷ با استاندارد IP68/IP69 برای مقاومت در‌برابر گردو‌غبار و آب و حسگر اثر‌انگشت زیر نمایشگر از نوع اولتراسونیک عرضه خواهند شد. حتی امکان دارد مدل پرو به قابلیت اتصال ماهواره‌ای نیز مجهز شود.""",
      views: "7"),
  BlogModel(
      id: 14,
      imageUrl:
          "https://api2.zoomit.ir/media/eu-anti-trust-cases-big-tech-67135ff0be1c94a52886927d?w=828&q=80",
      title: "بزرگ‌ترین پرونده‌های ضدانحصار اروپا علیه غول‌های فناوری",
      writer: "خدیجه طولابی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/654127c7e302e52c0a9bac35?q=75",
      date: "شنبه ۲۸ مهر ۱۴۰۳",
      content:
          """غول‌های فناوری گاهی به‌خاطر نقض قواعد رقابت، توسط نهادهای نظارتی جریمه می‌شوند. در اینجا ۱۰ مورد از سنگین‌ترین جریمه‌های بیگ تک را مرور می‌کنیم.
شرکت‌های بزرگ آمریکایی برای رقابت به هر ریسمانی چنگ می‌زنند، اما هرازگاهی به دیوار سختِ قوانین اتحادیه‌ی اروپا برمی‌خورند و مجبور می‌شوند در سیاست‌های رقابتی‌شان تجدیدنظر کنند. اتحادیه‌ی اروپا وظیفه‌ی بررسی درستی یا نادرستی عملکرد رقابتی شرکت‌های بزرگ فناوری را برعهده دارد و تاکنون با قوانین سختگیرانه‌اش، بسیاری از غول‌های دنیای تکنولوژی را به دردسر انداخته است.
همان‌طور که می‌دانید، هر چند ماه یک بار خبر تصویب یک جریمه‌ی هنگفت صدها میلیون دلاری از سوی اتحادیه‌ی اروپا برای یکی از غول‌های فناوری ایالت متحده منتشر می‌شود. شاید به همین دلیل باشد که مدتی پیش، مارگارت وستاگر، رئیس سابق بخش رقابت‌های اتحادیه‌ی اروپا در حالی که سخت درگیر چند پرونده‌ی شکایت بزرگ علیه رفتارهای انحصارگرایانه‌ی اپل و گوگل بود، به شوخی از غول‌های فناوری به‌عنوان بهترین مشتریان و منبع درآمد خود یاد کرد!
اقدامات ضدانحصار اتحادیه‌ی اروپا، نتایج مختلفی در پی داشته است. برخی از این اقدامات، الهام‌بخش وضع یکی از مهم‌ترین میراث‌های ماندگار صنعت فناوری جهان یعنی قانون بازارهای دیجیتال (DMA) شدند. این قانون با محدود کردن انحصارگرایی غول‌های فناوری، امکان رقابت در این بازار را برای شرکت‌های کوچک‌تر فراهم می‌کند.
در این مطلب، فهرست ۱۰ مورد از بزرگ‌ترین اقدامات ضدانحصار اتحادیه‌ی اروپا علیه غول‌های فناوری را آماده کرده‌ایم تا تصویری روشن از بزرگ‌ترین درگیری‌های رقابتی بین بروکسل و وزنه‌های سنگین اقتصاد دیجیتال جهان در چند دهه‌ی گذشته را به شما ارائه دهیم. این فهرست براساس مقدار جریمه مرتب شده است.
هیچ‌کس از پرداخت مالیات لذت نمی‌برد و بدتر از آن وقتی است که از کسی بخواهید مالیات‌های معوقه‌اش را پرداخت کند! در اولین مورد، باید به اپل اشاره کنیم. کوپرتینونشین‌ها پس از شکایت اتحادیه‌ی اروپا از ایرلند به‌عنوان یکی از کشورهای عضو خود که از سال ۱۹۹۱ تا ۲۰۱۴ معافیت‌های مالیاتی غیرقانونی به اپل اعطا کرده بود، مجبور شدند اواخر تابستان سال ۲۰۱۸ بیش از ۱۳٫۱ میلیارد یورو (معادل ۱۵٫۳ میلیارد دلار) را به‌عنوان مالیات آن ۲۳ سال به‌صورت یکجا به اتحادیه‌ی اروپا تقدیم کنند.
پرونده‌ی بخشودگی‌های مالیاتی که تحت قوانین رقابت اتحادیه‌ی اروپا قرار می‌گیرد، در دادگاه‌های تجدیدنظر این اتحادیه مطرح شد و ماه گذشته، دیوان عالی، نتیجه‌ی اولیه‌ی کمیسیون تابستان ۲۰۱۶ را در رابطه با کمک‌های دولتی غیرقانونی به غول آمریکایی تأیید کرد. با توجه به رأی نهایی دیوان عالی، گزینه‌های قانونی اپل برای ادامه‌ی اعتراض و تلاش برای تغییر حکم به پایان رسیده و میلیاردها دلار مالیات معوقه‌ی این غول فناوری مجدداً در دفاتر اتحادیه‌ی اروپا ثبت شده است و تا زمان تسویه حساب کامل با خزانه‌ی ایرلند، پاک نخواهد شد.""",
      views: "783"),
  BlogModel(
      id: 15,
      imageUrl:
          "https://api2.zoomit.ir/media/oneplus-11-display-bezzle-6420517aae01c787249c9470?w=828&q=80",
      title:
          "حرکت در مسیر ترندها؛ وان‌پلاس هم احتمالاً نمایشگر با لبه خمیده را کنار می‌گذارد",
      writer: "امیر عبدالملکی",
      writerImageUrl:
          "https://api2.zoomit.ir/media/oneplus-11-display-bezzle-6420517aae01c787249c9470?w=828&q=80",
      date: "شنبه ۲۸ مهر ۱۴۰۳",
      content:
          """وان‌پلاس نیز همچون بسیاری از برندهای دیگر احتمالاً نمایشگر لبه‌خمیده را از گوشی‌هایش کنار می‌گذارد.
تصاویر فاش‌شده از وان‌پلاس ۱۳، پرچمدار جدید چینی‌ها را با نمایشگر تخت به نمایش می‌گذارند. اگر شایعات صحت داشته باشند، وان‌پلاس نیز همچون سامسونگ و بسیاری از شرکت‌های دیگر به‌دلیل مشکلاتی همچون لمس ناخواسته‌ و افزایش شکنندگی، نمایشگر لبه‌خمیده را از گوشی‌هایش حذف می‌کند.
سامسونگ با معرفی سری گلکسی S22 نمایشگر پرچمدارانش را تخت کرد؛ گوگل در سری پیکسل ۹، فریم و نمایشگر تخت را به‌کار برده و حتی موتورولا نیز امسال برای بسیاری از گوشی‌هایش از لبه‌های تخت استفاده کرده است.
در دست گرفتن گوشی با فریم و نمایشگر تخت آسان‌تر است؛ هرچند برخی‌ها شاید گوشی‌هایی با نمایشگر لبه‌خمیده را جذاب‌تر بدانند، اما نمایشگرهای تخت، ترند این روزهای صنعت موبایل محسوب می‌شود.
وان‌پلاس احتمالاً طی روزهای آینده پرچمدار جدیدش را با تراشه‌ی اسنپدراگون ۸ الیت رونمایی خواهد کرد. وان‌پلاس ۱۳ ظاهراً نخستین گوشی با تراشه‌ی جدید کوالکام خواهد بود.""",
      views: "803"),
  BlogModel(
      id: 16,
      imageUrl:
          "https://api2.zoomit.ir/media/internet-connection4-63b52929745f73edafcd31d3?w=828&q=80",
      title:
          "انجمن تجارت الکترونیک تهران: کیفیت اینترنت مهم‌ترین مانع رشد اقتصاد دیجیتال کشور است",
      writer: "هانیه کلهر",
      writerImageUrl:
          "https://api2.zoomit.ir/media/6374fe31807a6958d664ec3f?q=75",
      date: "شنبه ۲۸ مهر ۱۴۰۳",
      content:
          """ارتقای کیفیت اینترنت نه‌تنها یک خواست و حق بدیهی شهروندی است، بله اینترنت باکیفیت شاهراه توسعه اقتصاد دیجیتال کشور هم محسوب می‌شود.
در روزهایی که رئیس‌جمهور در خصوص مسئله اینترنت و محدودیت‌هایش دستور بررسی وضعیت و تهیه گزارش داده‌اند، بد نیست گزارش‌هایی که کارشناسان و متخصصان با تحلیل جامع و همه‌جانبه از وضعیت اینترنت کشور تهیه و ارائه کرده‌اند، بار دیگر بررسی شود.
انجمن تجارت الکترونیک تهران احتمالاً با هدف یادآوری یافته‌های خود در سه گزارشی که از سال ۱۴۰۲ تا آخر بهار ۱۴۰۳ داده، مروری بر مهم‌ترین آمارهای مربوط به وضعیت اینترنت کشور را منتشر کرده و این تذکر را هم بار دیگر مطرح کرده که رشد اقتصاد دیجیتال کشور در گرو بهبود کیفیت اینترنت است و در حال حاضر، کیفیت نامطلوب اینترنت مهم‌ترین مانع برای تحقق آن است.
این انجمن در متن خود، کیفیت اینترنت را شاهراه توسعه اقتصاد دیجیتال کشور خوانده و با بررسی‌های علمی در چندین گزارش، وضعیت اینترنت ایران را تحلیل کرده و راهکارهایی برای بهبود آن پیشنهاد داده است. همان‌طور که پیش از این نیز ذکر شده بود، هدف اصلی این گزارش‌ها ایجاد آگاهی عمومی و همکاری با سیاست‌گذاران برای رفع موانع و ارتقای زیرساخت‌ها است تا اقتصاد دیجیتال کشور بتواند با سرعت بیشتری رشد کند.
انجمن تجارت الکترونیک در سه گزارش در سال‌های ۱۴۰۲=۱۴۰۳ به بررسی علمی و تبیین «کیفیت اینترنت ایران» پرداخته تا به شکل کمی به مقایسه ایران با دیگر کشورهای جهان بپردازد. این گزارش با هدف بهبود وضعیت اینترنت از راه آگاهی‌رسانی عمومی و مطالبه‌گری از سیاست‌گذاران منتشر می‌شود.
این انجمن در متن منتشرشده به گزارش اول خود، که به بهار ۱۴۰۲ مربوط می‌شود، ارجاع داده و نوشته است که بررسی‌ها در آن گزارش نشان داده بود «کیفیت اینترنت ایران در وضعیت بحرانی قرار دارد. اینترنت در ایران، پراختلال، محدود و کند بود. به بیان دقیق‌تر در بین ۱۰۰ کشور جهان با بیشترین تولید ناخالص ملی، ایران پس از میانمار دومین اینترنت پراختلال و پس از چین، دومین اینترنت محدود را از آن خود کرده بود.»
براساس این گزارش، ایران در شاخص‌های اختلال و محدودیت، در جایگاه ۹۹ از ۱۰۰ کشور و در شاخص سرعت هم از میان ۱۰۰ کشور در جایگاه ۹۷ قرار داشت.
«وضعیت خطرناک اینترنت» وضعیتی بود که انجمن تجارت الکترونیک در گزارش دوم خود (در پاییز ۱۴۰۲) اعلام کرده و درباره اینترنت پراختلال، محدود و کند کشور نوشته بود:
اینترنت در ایران شباهت زیادی با کشورهای فقیر و توسعه‌نیافته داشت. با این تفاوت اصلی که این وضعیت خودخواسته بود؛ به این معنا که بخش قابل توجهی از مشکلات اینترنت کشور از فیلترینگ و محدودیت‌های آن تا سرعت و اختلالات گسترده نه به دلیل مشکل در توسعه زیرساخت‌ها که به سیاست‌گذاری‌ها، اقدامات مدیریتی و اعمال قوانین برمی‌گشت.
در آن گزارش رتبه ایران در شاخص «اختلال» ۴۷ از ۵۰ بود. از نظر شاخص محدودیت هم رتبه ۴۹ در میان ۵۰ کشور را داشتیم و شاخص‌های سرعت هم ایران را در رده آخر این فهرست متشکل از ۵۰ کشور نشان می‌داد. بنابراین، «ایران در مجموع با کسب ۱۴۶ امتیاز منفی (از مجموع ۱۵۰ امتیاز ممکن) در صدر کشورهای با بدترین کیفیت اینترنت قرار دارد.»""",
      views: "690"),
];
List<PodCastModel> podCastList = [
  PodCastModel(
    id: 1,
    imageUrl:
        "https://cdn-arch.shenoto.com/shenoto-channel/0faff961-d391-4eb8-a294-fd8b1ecc387d/cover/200.jpg",
    title: "متاورس",
  ),
  PodCastModel(
    id: 2,
    imageUrl:
        "https://cdn-arch.shenoto.com/shenoto-album/f3f08726-335c-4da5-a73b-552c0440fe9d/cover/200.jpg",
    title: "رادیو مرز",
  ),
  PodCastModel(
    id: 3,
    imageUrl:
        "https://cdn-arch.shenoto.com/shenoto-channel/78fcbb72-bbf3-4e3d-acdc-bf9d151f7439/cover/200.jpg",
    title: "Logos",
  ),
  PodCastModel(
    id: 4,
    imageUrl:
        "https://cdn-arch.shenoto.com/shenoto-channel/05df3055-acf7-41ab-aa1e-48bcbde37b81/cover/200.jpg",
    title: "سرآشپز",
  ),
  PodCastModel(
    id: 5,
    imageUrl:
        "https://cdn-arch.shenoto.com/shenoto-channel/8dfcf07a-a7e4-410e-ae91-46a480b0f215/cover/200.jpg",
    title: "گوشی دستته",
  ),
  PodCastModel(
    id: 6,
    imageUrl:
        "https://cdn-arch.shenoto.com/shenoto-channel/d26815b8-9732-4503-8362-66f4a8b13b09/cover/200.jpg",
    title: "پرچم سفید",
  ),
];
