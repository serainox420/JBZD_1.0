package commons.validator.routines;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.share.internal.ShareConstants;
import com.flurry.android.AdCreative;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.fitness.FitnessActivities;
import com.google.android.gms.fitness.data.WorkoutExercises;
import com.google.firebase.a.a;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.monetization.internal.configs.PkInitilaizer;
import com.pubmatic.sdk.common.phoenix.PhoenixConstants;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Locale;
/* loaded from: classes.dex */
public class DomainValidator implements Serializable {
    private static final DomainValidator b = new DomainValidator(false);
    private static final DomainValidator c = new DomainValidator(true);
    private static final String[] f = {"arpa"};
    private static final String[] g = {"abogado", "academy", "accountants", "active", "actor", "adult", "aero", "agency", "airforce", "allfinanz", "alsace", "amsterdam", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE, "aquarelle", "archi", "army", "arpa", "asia", "associates", "attorney", "auction", "audio", "autos", "axa", "band", "bar", "bargains", "bayern", "beer", "berlin", "best", "bid", "bike", "bio", "biz", "black", "blackfriday", "bloomberg", "blue", "bmw", "bnpparibas", "boo", "boutique", "brussels", "budapest", "build", "builders", "business", "buzz", "bzh", "cab", "cal", "camera", "camp", "cancerresearch", "capetown", "capital", "caravan", "cards", "care", "career", "careers", "cartier", "casa", "cash", PubMaticConstants.APP_CATEGORY_PARAM, "catering", "center", "ceo", "cern", "channel", "cheap", "christmas", "chrome", "church", "citic", PubMaticConstants.USER_STATE, "claims", "cleaning", "click", "clinic", "clothing", "club", "coach", "codes", "coffee", "college", "cologne", "com", "community", "company", "computer", "condos", "construction", "consulting", "contractors", "cooking", "cool", "coop", PubMaticConstants.COUNTRY_PARAM, "credit", "creditcard", FitnessActivities.CRICKET, "crs", "cruises", "cuisinella", "cymru", "dad", "dance", "dating", "day", "deals", "degree", "delivery", "democrat", "dental", "dentist", "desi", "dev", "diamonds", "diet", "digital", "direct", "directory", "discount", "dnp", "docs", "domains", "doosan", "durban", "dvag", "eat", "edu", "education", Scopes.EMAIL, "emerck", "energy", "engineer", "engineering", "enterprises", "equipment", "esq", "estate", "eurovision", "eus", "events", "everbank", "exchange", "expert", "exposed", "fail", "farm", "fashion", "feedback", "finance", "financial", "firmdale", "fish", "fishing", "fitness", "flights", "florist", "flowers", "flsmidth", WorkoutExercises.FLY, "foo", "forsale", "foundation", "frl", "frogans", "fund", "furniture", "futbol", "gal", "gallery", "garden", "gbiz", "gent", "ggee", "gift", "gifts", "gives", "glass", "gle", "global", "globo", "gmail", "gmo", "gmx", "google", "gop", "gov", "graphics", "gratis", "green", "gripe", "guide", "guitars", "guru", "hamburg", "haus", "healthcare", "help", "here", "hiphop", "hiv", "holdings", "holiday", "homes", "horse", "host", "hosting", "house", "how", "ibm", "immo", "immobilien", "industries", "info", "ing", "ink", "institute", "insure", "int", "international", "investments", "irish", "iwc", "jetzt", "jobs", "joburg", "juegos", "kaufen", "kim", "kitchen", "kiwi", "koeln", "krd", "kred", "lacaixa", "land", "latrobe", "lawyer", "lds", "lease", "legal", "lgbt", "lidl", "life", "lighting", "limited", "limo", "link", "loans", "london", "lotto", "ltda", "luxe", "luxury", "madrid", "maison", "management", "mango", "market", "marketing", ShareConstants.WEB_DIALOG_PARAM_MEDIA, "meet", "melbourne", "meme", "memorial", "menu", "miami", "mil", "mini", "mobi", "moda", "moe", "monash", "money", "mormon", "mortgage", "moscow", "motorcycles", "mov", "museum", "nagoya", "name", "navy", "net", "network", "neustar", "new", "nexus", "ngo", "nhk", "ninja", "nra", "nrw", "nyc", "okinawa", "ong", "onl", "ooo", "org", "organic", "osaka", "otsuka", "ovh", "paris", "partners", "parts", "party", "pharmacy", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_PHOTO, "photography", "photos", "physio", "pics", "pictures", "pink", "pizza", "place", "plumbing", "pohl", "poker", "porn", "post", "praxi", "press", "pro", "prod", "productions", "prof", "properties", "property", "pub", "qpon", "quebec", "realtor", "recipes", "red", "rehab", "reise", "reisen", "reit", "ren", "rentals", "repair", "report", "republican", "rest", "restaurant", "reviews", "rich", "rio", "rip", "rocks", "rodeo", "rsvp", "ruhr", "ryukyu", "saarland", "sale", "samsung", "sarl", "sca", "scb", "schmidt", "schule", "schwarz", "science", "scot", "services", "sew", "sexy", "shiksha", "shoes", "shriram", "singles", "sky", "social", "software", "sohu", "solar", "solutions", "soy", "space", "spiegel", "supplies", "supply", "support", "surf", "surgery", "suzuki", "sydney", "systems", "taipei", "tatar", "tattoo", a.b.TAX, "technology", "tel", "tienda", "tips", "tires", "tirol", "today", "tokyo", "tools", AdCreative.kAlignmentTop, "town", "toys", "trade", "training", "travel", "trust", "tui", "university", "uno", "uol", "vacations", "vegas", "ventures", "versicherung", "vet", "viajes", AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO, "villas", "vision", "vlaanderen", "vodka", "vote", "voting", "voto", "voyage", "wales", "wang", "watch", "webcam", "website", "wed", "wedding", "whoswho", "wien", "wiki", "williamhill", "wme", "work", "works", "world", "wtc", "wtf", "xn--1qqw23a", "xn--3bst00m", "xn--3ds443g", "xn--45q11c", "xn--4gbrim", "xn--55qw42g", "xn--55qx5d", "xn--6frz82g", "xn--6qq986b3xl", "xn--80adxhks", "xn--80asehdb", "xn--80aswg", "xn--c1avg", "xn--cg4bki", "xn--czr694b", "xn--czrs0t", "xn--czru2d", "xn--d1acj3b", "xn--fiq228c5hs", "xn--fiq64b", "xn--flw351e", "xn--hxt814e", "xn--i1b6b1a6a2e", "xn--io0a7i", "xn--kput3i", "xn--mgbab2bd", "xn--ngbc5azd", "xn--nqv7f", "xn--nqv7fs00ema", "xn--p1acf", "xn--q9jyb4c", "xn--qcka1pmc", "xn--rhqv96g", "xn--ses554g", "xn--unup4y", "xn--vermgensberater-ctb", "xn--vermgensberatung-pwb", "xn--vhquv", "xn--xhq521b", "xn--zfr164b", "xxx", "xyz", "yachts", "yandex", FitnessActivities.YOGA, "yokohama", "youtube", "zip", "zone", "zuerich"};
    private static final String[] h = {"ac", AdDatabaseHelper.TABLE_AD, AnalyticsEvent.TYPE_USER_ATTRIBUTE, "af", "ag", "ai", "al", AnalyticsSQLiteHelper.EVENT_LIST_AM, "an", "ao", "aq", "ar", "as", "at", PhoenixConstants.AD_UNIT_PARAM, "aw", "ax", "az", "ba", "bb", "bd", "be", "bf", "bg", "bh", "bi", "bj", "bm", "bn", "bo", "br", "bs", "bt", "bv", "bw", "by", "bz", "ca", "cc", "cd", "cf", "cg", "ch", "ci", "ck", "cl", "cm", "cn", "co", "cr", "cu", "cv", "cw", "cx", "cy", "cz", "de", "dj", "dk", "dm", "do", "dz", "ec", "ee", "eg", "er", AnalyticsEvent.TYPE_END_SESSION, "et", "eu", "fi", "fj", "fk", "fm", "fo", "fr", "ga", "gb", "gd", "ge", "gf", "gg", "gh", "gi", "gl", "gm", "gn", "gp", "gq", "gr", "gs", "gt", "gu", "gw", "gy", "hk", "hm", "hn", "hr", "ht", "hu", "id", "ie", "il", "im", "in", "io", "iq", "ir", "is", "it", "je", "jm", "jo", "jp", "ke", "kg", "kh", "ki", "km", "kn", "kp", "kr", "kw", "ky", "kz", "la", AnalyticsEvent.TYPE_LEVEL_BEGIN, "lc", "li", "lk", "lr", "ls", "lt", "lu", "lv", "ly", "ma", "mc", "md", "me", "mg", "mh", "mk", "ml", "mm", "mn", "mo", "mp", "mq", "mr", "ms", "mt", "mu", "mv", "mw", "mx", "my", "mz", "na", "nc", "ne", "nf", "ng", "ni", "nl", "no", "np", "nr", "nu", "nz", "om", "pa", "pe", "pf", "pg", "ph", PkInitilaizer.PRODUCT_PK, "pl", "pm", "pn", "pr", "ps", "pt", "pw", "py", "qa", "re", "ro", "rs", "ru", "rw", "sa", "sb", "sc", "sd", "se", "sg", "sh", "si", "sj", "sk", "sl", "sm", "sn", "so", "sr", "st", "su", "sv", "sx", "sy", "sz", "tc", "td", "tf", "tg", "th", "tj", "tk", "tl", "tm", "tn", "to", "tp", "tr", "tt", "tv", "tw", PhoenixConstants.TIME_ZONE_PARAM, "ua", "ug", "uk", "us", "uy", "uz", "va", "vc", "ve", "vg", "vi", "vn", "vu", "wf", "ws", "xn--3e0b707e", "xn--45brj9c", "xn--80ao21a", "xn--90a3ac", "xn--clchc0ea0b2g2a9gcd", "xn--d1alf", "xn--fiqs8s", "xn--fiqz9s", "xn--fpcrj9c3d", "xn--fzc2c9e2c", "xn--gecrj9c", "xn--h2brj9c", "xn--j1amh", "xn--j6w193g", "xn--kprw13d", "xn--kpry57d", "xn--l1acc", "xn--lgbbat1ad8j", "xn--mgb9awbf", "xn--mgba3a4f16a", "xn--mgbaam7a8h", "xn--mgbayh7gpa", "xn--mgbbh1a71e", "xn--mgbc0a9azcg", "xn--mgberp4a5d4ar", "xn--mgbx4cd0ab", "xn--node", "xn--o3cw4h", "xn--ogbpf8fl", "xn--p1ai", "xn--pgbs0dh", "xn--s9brj9c", "xn--wgbh1c", "xn--wgbl6a", "xn--xkc2al3hye2a", "xn--xkc2dl3a5ee0h", "xn--yfro4i67o", "xn--ygbi2ammx", "ye", "yt", "za", "zm", "zw"};
    private static final String[] i = {"localdomain", "localhost"};

    /* renamed from: a  reason: collision with root package name */
    private final boolean f5626a;
    private final RegexValidator d = new RegexValidator("^(?:\\p{Alnum}(?>[\\p{Alnum}-]{0,61}\\p{Alnum})?\\.)+(\\p{Alpha}(?>[\\p{Alnum}-]{0,61}\\p{Alnum})?)\\.?$");
    private final RegexValidator e = new RegexValidator("\\p{Alnum}(?>[\\p{Alnum}-]{0,61}\\p{Alnum})?");

    public static DomainValidator getInstance() {
        return b;
    }

    public static DomainValidator getInstance(boolean z) {
        return z ? c : b;
    }

    private DomainValidator(boolean z) {
        this.f5626a = z;
    }

    public boolean isValid(String str) {
        if (str == null) {
            return false;
        }
        String a2 = a(str);
        if (a2.length() > 253) {
            return false;
        }
        String[] match = this.d.match(a2);
        if (match != null && match.length > 0) {
            return isValidTld(match[0]);
        }
        return this.f5626a && this.e.isValid(a2);
    }

    public boolean isValidTld(String str) {
        String a2 = a(str);
        return (this.f5626a && isValidLocalTld(a2)) || isValidInfrastructureTld(a2) || isValidGenericTld(a2) || isValidCountryCodeTld(a2);
    }

    public boolean isValidInfrastructureTld(String str) {
        return Arrays.binarySearch(f, b(a(str).toLowerCase(Locale.ENGLISH))) >= 0;
    }

    public boolean isValidGenericTld(String str) {
        return Arrays.binarySearch(g, b(a(str).toLowerCase(Locale.ENGLISH))) >= 0;
    }

    public boolean isValidCountryCodeTld(String str) {
        return Arrays.binarySearch(h, b(a(str).toLowerCase(Locale.ENGLISH))) >= 0;
    }

    public boolean isValidLocalTld(String str) {
        return Arrays.binarySearch(i, b(a(str).toLowerCase(Locale.ENGLISH))) >= 0;
    }

    private String b(String str) {
        if (str.startsWith(".")) {
            return str.substring(1);
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(String str) {
        try {
            return c(str);
        } catch (IllegalArgumentException e) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final Method f5627a = b();

        private static Method b() {
            try {
                return Class.forName("java.net.IDN", false, DomainValidator.class.getClassLoader()).getDeclaredMethod("toASCII", String.class);
            } catch (Exception e) {
                return null;
            }
        }
    }

    private static final String c(String str) throws IllegalArgumentException {
        Method method;
        if (!d(str) && (method = a.f5627a) != null) {
            try {
                return (String) method.invoke(null, str.toLowerCase(Locale.ENGLISH));
            } catch (IllegalAccessException e) {
                throw new RuntimeException(e);
            } catch (InvocationTargetException e2) {
                Throwable cause = e2.getCause();
                if (cause instanceof IllegalArgumentException) {
                    throw ((IllegalArgumentException) cause);
                }
                throw new RuntimeException(e2);
            }
        }
        return str;
    }

    private static boolean d(String str) {
        if (str == null) {
            return true;
        }
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) > 127) {
                return false;
            }
        }
        return true;
    }
}
