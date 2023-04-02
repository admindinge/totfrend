# totfrend
## ფრონტენდის მარტივი სტერტერი

სტარტერით მუშაობა გაგიათვილდებათ Unix მსგავს სისტემებში VSCode რედაქტორის გამოყენებით.

სისტემაში უნდა იდგეს nodejs და npm, მათ დასაყენებლად ინსტრუქცია მათ საიტზე უნდა ნახოთ.

[Windows:](https://nodejs.org/en/download/)

[macOS: ](https://nodejs.org/en/download/)

[Linux: ](https://nodejs.org/en/download/package-manager/)

მე პროექტი შევიმუშავე WSL Ubuntu გარემოში და Windows-ის აუცილებლობის შემთხვევაში მე ამ მოწყობას გავუწევ რეკომენდაციას

ინსტრუქცია შეგიძლიათ [იხილოთ აქ, საიტზე](https://docs.microsoft.com/en-us/windows/wsl/install-win10)

შესაძლებელია ენების არჩევაც

პროექტის ავტომატიზაციას (შეკრებას) ახორციელებს nodejs-ის პაკეტი Gulp მე-4 ვერსია.

Gulp-ის მოქმედება აღწერილია gulpfile.js ფაილში, რომლის ცოდნაც პროექტთან სამუშაოდ აუცილებელი არაა.

ჩამოვთვლი ამოცანებს, რომელსაც ის ასრულებს:

1. პროექტთან სამუშაოდ დააყენებს ყველა nodejs პაკეტს
2. პროექტს გაუშვებს ლოკალური სერვერით
3. სამუშაო ფაილის ცვლილებისას განაახლებს გვერდს.
4. აერთებს CSS ფაილებს
5. აერთებს JS ფაილებს

პროექტში აქცენტი გაკეთებულია ქართულ კონტენტზე და შემოტანილია ქართული ვებ ფონტები. მათი ვიზუალური გამოსახულებისთვის გვჭირდება ინტერნეტი. ეს ფაილები პროექტს უერთდება CDN სერვერიდან და ბმული უნდა ჩაიწეროს css/fonts.css ფაილში იმპორტის სახით.

ფონტების მიბმისათვის მზა ინსტრუქცია არის [https://web-fonts.ge/](https://web-fonts.ge/) საიტზე და მისი გადმოტანა შეიძლება კოპირებით. იქვეა მითითებული შრიფტის ოჯახის სახელიც, რომელიც ასევე ხდება კოპირებით. შრიფტის შერჩევის შემდეგ უნდა გამოიყენოთ CDN-ით დაყენების ინსტრუქცია და იქ ნახავთ ყველაფერს.

რაც შეეხება პროექტს, ის მე შექმნილი მაქვს შაბლონის სახით და ყველა ახალი პროექტის დასაწყებად ვაკეთებ ახალ რეპოზიტორს, რომლისთვისაც შაბლონად ამ რეპოზიტორს ვუთითებ. ამით ვახდენ ამ რეპოზიტორის დუბლირებას მისი ყველა ფუნქციით და უკვე ახალ შექმნილ პროექტთან ვიწყებ მუშაობას. იგივე რჩევა მექნება თქვენთვისაც, თუმცაღა შეგიძლიათ დაფორკოთ კიდეც.
