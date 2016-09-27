<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FAQPage.aspx.cs" Inherits="FAQPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        p.ex1 {
            margin-top: 2cm;
        }
        h1.ex2 {
            margin-top: 1.5cm;
        }
        p.ex3 {
            margin-top: .5cm;
        }
        p.ex4 {
            margin-top: 2.5cm;
        }
    </style>
    <script src="https://code.jquery.com/jquery-1.7.1.min.js">
    </script>
    <script>

       $(document).ready(function () {
           $('p#hall a').click(function () {
               var page4 = $(this).attr('href');
               $('#paul').load( page4 +'.aspx');
               return false;
           });
       });

    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="paul">
        <h1>
            FAQ
        </h1>
        <p id="hall">
            Below are the some frequently asked questions. If you still cannot find an answer you are looking for please <a href="Contact">contact us!</a>
        </p>
        <p>
            <h1 class="ex2"><a href="#isbn">ISBN's</a></h1>
            <ul>
                <li><a href="#sec1">What is an ISBN?</a></li>
                <li><a href="#sec1.1">Where can I find the ISBN of my book?</a></li>
                <li><a href="#sec1.2">What does an ISBN look like?</a></li>
                <li><a href="#sec1.3">Do you buy books without ISBNs?</a></li>
            </ul>
            <h1 class="ex2"><a href="#types">Types of book</a></h1>
            <ul>
                <li><a href="#sec2.1">What types of books do you buy?</a></li>
                <li><a href="#sec2.2">What types of books do you NOT buy?</a></li>
                <li><a href="#sec2.3">Do you buy items marked Not for Resale?</a></li>
                <li><a href="#sec2.4">you buy large quantities of books?</a></li>
                <li><a href="#sec2.5">Will you buy several copies of a given book?</a></li>
            </ul>
            <h1 class="ex2"><a href="#condition">Book Condition</a></h1>
            <ul>
                <li><a href="#sec3.1">What sort of physical condition should the books be in?</a></li>
                <li><a href="#sec3.2">What happens if you do not accept one or more of my books?</a></li>
            </ul>
            <h1 class="ex2"><a href="#paid">Getting paid</a></h1>
            <ul>
                <li><a href="#sec4.1">When and how do I get paid</a></li>
                <li><a href="#sec4.2">How long does it take to get paid</a></li>
            </ul>
            <h1 class="ex2"> <a href="#ship">Shipping</a></h1>
            <ul>
                <li><a href="#sec5.1">Who pays for Shipping?</a></li>
                <li><a href="#sec5.2">What if I want to ship my items through a different carrier?</a></li>
                <li><a href="#sec5.3">Should I pay for insurance on my package of books?</a></li>
                <li><a href="#sec5.4">What happens if I don't include some of the books on the packing slip?</a></li>
                <li><a href="#sec5.5">What happens if you don't receive my books?</a></li>
            </ul>
        </p>

        <p class="ex1" id="isbn">
        <p class="ex3" id="sec1">
            Q: Q: What is an ISBN?
        </p>
        <p>
            A: ISBN is an abbreviation for “International Standard Book Number”. It's the standardized identification system for books and other media.

        </p>
        <p class="ex3" id=" sec1.1">
            Q: Where can I find the ISBN of my book?
        </p>
        <p id="sec1.1">
            A: Publishers typically puts the ISBN on the back cover of the book, usually above or near the barcode. They are also shown on the copyright information page within the first few pages of the book. If the item is a single volume and part of a set, this would be a good place to look, as it shows the ISBN of each volume.
        </p>
        <p class="ex3" id="sec1.2">
            Q: What does an ISBN look like?
        </p>
        <p>
            A: Usually the letters ISBN will be printed followed by a number with sections separated by hyphens, e.g. ISBN 0-89123-145-2
        </p>
        <p class="ex3" id="sec1.3">
            Q: Do you buy books without ISBNs?
        </p>
        <p>
            A: We do not buy books without ISBNs, as it is generally difficult to determine a price for the item.
        </p>


        <p class="ex4" id="types">
        <p id="sec2.1">
            Q:What types of books do you buy?
        </p>
        <p>
            A: We buy books that meet our condition standards, are available for resale and have at least a little market value. Our pricing page will tell you whether we are buying a specific book once you've entered the ISBN. Items that we typically do not buy are: Older books, books without ISBNs, encyclopedia sets, magazines, music books, comic books, books that are marked as “not for resale,” books that are in poor condition, outdated text books, etc.
        </p>
        <p class="ex3" id="sec2.2">
            Q:What types of books do you NOT buy?
        </p>
        <p>
            A:We do not buy
            <ul>
                <li>International Edition Textbooks</li>
                <li>Instructor Edition Textbooks</li>
                <li>Examination copies</li>
                <li>Teacher's Edition</li>
                <li>Advanced Readers Copy (ARC)</li>
                <li>Items without an ISBN printed on the book</li>
                <li>Items that are sexually explicit and/or offensive</li>
                <li>Non book items such as Calendars and board games (even though they may have an ISBN)</li>
                <li>Encyclopedia Sets</li>
            </ul>
        </p>
        <p class="ex3" id="sec2.3">
            Q: Do you buy items marked Not for Resale?
        </p>
        <p>
            A: No we do not buy any items marked not for resale, for example, but not limited to advanced readers copies, international editions, instructors editions, and examination copies. This information is often hidden by heavy use of tape and stickers, so be cautious. They will be rejected upon arrival.
        </p>

        <p class="ex3" id="sec2.4">
            Q:Will you buy large quantities of books?
        </p>
        <p>
            A: We do buy books in bulk. Please contact us about letting us know the books that you have and amount you are interested in selling. Include the ISBN of each title and quantity of each title - if you could put the information into a table such as Microsoft Excel (MS Excel 2007 or earlier) that would be appreciated. We will let you know if we are willing to buy the items and how many.
        </p>
        <p class="ex3" id="sec2.5">
            Q:Will you buy several copies of a given book?
        </p>
        <p>
            A: We do buy multiple copies of the same book. How many depends on the demands of our buyers. If you have more than one copy of any book, please email us to see if we are buying them and how many. Include in the email the title, the ISBN and the quantity of each title. Also, if you already have an order number created, include that as well.

        </p>

        <p class="ex4" id="condition"></p>
        <p id="sec3.1">
            Q: What sort of physical condition should the books be in?
        </p>
        <p>
            A: Books must be in very good condition which means that books must meet the following criteria:
            <ul>
                <li>No tears and minimal wear to the cover, or pages.</li>
                <li>Corners of covers should not be bent, dented or frayed</li>
                <li>Minimal wear to the binding - pages should be firmly attached to the binding - bindings cannot be broken</li>
                <li>A small amount of writing, underlining or highlighting of pages is okay, as long as it is on fewer than 30% of the book's pages. However, workbooks and study guides must be clean and unwritten in (no answers filled in already)</li>
                <li>No missing pages</li>
                <li>No liquid damage – warped, wavy pages are a sign of liquid damage</li>
                <li>No fire or smoke damage</li>
                <li>No strong odor of any kind (including musty or cigarette odor, for example)</li>
                <li>If book originally came with a CD-Rom, the original CD-Rom must accompany the book when shipped to us. The CD must be in working condition</li>
                <li>No advance reading copies, uncorrected proofs, and/or promotional or screener copies of books</li>
                <li>No partial sets (ie, only sending volume 1 of a 2 volume set). Please make sure you use the correct ISBN if it is a single volume and/or full set! This is a common error!</li>
                <li>No items with the access code exposed. This includes standalone items (for example an item that is an access code for online class like Mathlab) as well as items which include a supplementary access code (for example a textbook packaged with an associated access code for an accompanying online class).</li>

            </ul>
        <p class="ex3">
            Items we receive that do not meet these requirements are not eligible for payment. The quote will be deducted from the total amount - so please make good judgment when assessing your items and please pack your books carefully.
        </p>

        <p class="ex3" id="sec3.2">
            Q: What happens if you do not accept one or more of my books?
        </p>
        <p>
            A:We will inform you immediately of any issues via email. Issues will put your payment on hold until they are resolved by your response. We will either recycle the item and deduct the quote from the total, or send the item(s) back for a return processing fee of $3.99. This fee can be deducted directly from your total quote, or sent via PayPal.
        </p>
        <p>
            To ensure that books are not damaged please follow these guidelines:
            <ul>
                <li>Use a sturdy box. Thin boxes (e.g., cereal boxes) may not protect your books in shipment.</li>
                <li>Do not use packing peanuts for packing material. Packing peanuts shift during transit, damage pages and often become crushed by the weight of the books during shipment! A large amount of shipments we've received using packing peanuts result in several damaged books.</li>
                <li>Choose the right size of box. Huge boxes of books nearly always result in damaged books</li>
                <li>Keep the weight of each box and books under 35lbs. Heavy boxes nearly always result in damaged books</li>
                <li>Use wadded up newspaper to fill gaps. Newspaper can be wadded up tightly and provide protection</li>
            </ul>
        </p>

        <p class="ex4" id="paid">
        </p>
        <p id="sec4.1">
            Q: When and how do I get paid?
        </p>
        <p>
            A: When we receive the box of books and confirm its contents against the order, we process your payment in our next PayPal or check run (usually within 2 business days after the order is processed)
        </p>
        <p class="ex3" id="sec4.2">
            Q: How long does it take to get paid?
        </p>
        <p>
            A: Since we are unable to pay you until we receive your items, the real variable in the amount of time to get paid is the transit times. If you choose to ship using our FedEx Service we will receive your items in 2-5 days. If you choose the USPS media mail option we will receive your items in 7-21 days. We attempt to check in all books within two business days of arrival, although this may take longer depending on the number of orders we receive at any given time. For quickest payment use PayPal!
        </p>

        <p class="ex4" id="ship"></p>
        <p id="sec5.1">
            Q: Who pays for Shipping?
        </p>
        <p>
            A: A: Shipping is always 100% free when you use one the shipping label provided after checkout!
        </p>
        <p class="ex3" id="sec5.2">
            Q: What if I want to ship my items through a different carrier?
        </p>
        <p>
            A: We will gladly accept your packages no matter how you decide to ship them to us. However if you decide not to use our free shipping label, you will be responsible for the shipping costs.
        </p>
        <p class="ex3" id="sec5.3">
            Q: Should I pay for insurance on my package of books?
        </p>
        <p>
            A: Insurance is included with our pre-paid shipping label up to $100 dollars.
        </p>
        <p class="ex3" id="sec5.4">
            Q: What happens if I don't include some of the books on the packing slip?
        </p>
        <p>
            A: We'll contact you via email to confirm that the books were not shipped. If you purchased insurance and your package is missing books we will work with you to recover the cost of the books from the postal service. Only the sender of items (in this case, you) can recover the cost from the postal service. We will help you by providing an accurate accounting of the value.
        </p>
        <p class="ex3" id="sec5.5">
            Q: What happens if you don't receive my books?
        </p>
        <p>
            A: If we can verify that you shipped out the items and you used our Free label - we will file a claim on your behalf with the shipping carrier.
        </p>
            </div>
    </form>
</body>
</html>
