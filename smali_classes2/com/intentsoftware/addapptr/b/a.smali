.class public Lcom/intentsoftware/addapptr/b/a;
.super Ljava/lang/Object;
.source "AdRequestParams.java"


# static fields
.field private static final ANDROID_PHONE:Ljava/lang/String; = "Android Phone"

.field private static final ANDROID_TABLET:Ljava/lang/String; = "Android Tablet"

.field private static IP:Ljava/lang/String; = null

.field public static final PROTOCOL_VERSION:Ljava/lang/String; = "12"

.field private static advertisingId:Ljava/lang/String;

.field private static appID:Ljava/lang/String;

.field private static kitversion:Ljava/lang/String;

.field private static lang:Ljava/lang/String;

.field private static model:Ljava/lang/String;

.field private static testAppId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, ""

    sput-object v0, Lcom/intentsoftware/addapptr/b/a;->appID:Ljava/lang/String;

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/intentsoftware/addapptr/b/a;->lang:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/intentsoftware/addapptr/b/a;->model:Ljava/lang/String;

    .line 21
    const-string v0, "Legacy_Unknown"

    sput-object v0, Lcom/intentsoftware/addapptr/b/a;->advertisingId:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/intentsoftware/addapptr/b/a;->kitversion:Ljava/lang/String;

    .line 23
    const-string v0, ""

    sput-object v0, Lcom/intentsoftware/addapptr/b/a;->IP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdvertisingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/intentsoftware/addapptr/b/a;->advertisingId:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/intentsoftware/addapptr/b/a;->appID:Ljava/lang/String;

    return-object v0
.end method

.method public static getIP()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/intentsoftware/addapptr/b/a;->IP:Ljava/lang/String;

    return-object v0
.end method

.method public static getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/intentsoftware/addapptr/b/a;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/intentsoftware/addapptr/b/a;->model:Ljava/lang/String;

    return-object v0
.end method

.method public static getReportingAppID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 56
    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getTestAppId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "android.com.account%d.application.demo"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getTestAppId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/intentsoftware/addapptr/b/a;->appID:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getTestAppId()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/intentsoftware/addapptr/b/a;->testAppId:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intentsoftware/addapptr/b/a;->appID:Ljava/lang/String;

    .line 30
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "_"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intentsoftware/addapptr/b/a;->lang:Ljava/lang/String;

    .line 33
    invoke-static {p0}, Lcom/intentsoftware/addapptr/c/m;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Android Tablet"

    :goto_0
    sput-object v0, Lcom/intentsoftware/addapptr/b/a;->model:Ljava/lang/String;

    .line 34
    invoke-static {}, Lcom/intentsoftware/addapptr/AATKit;->getVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/intentsoftware/addapptr/b/a;->kitversion:Ljava/lang/String;

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/intentsoftware/addapptr/b/a;->setTestAppId(I)V

    .line 37
    return-void

    .line 33
    :cond_0
    const-string v0, "Android Phone"

    goto :goto_0
.end method

.method public static setAdvertisingId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 92
    sput-object p0, Lcom/intentsoftware/addapptr/b/a;->advertisingId:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public static setIP(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    sput-object p0, Lcom/intentsoftware/addapptr/b/a;->IP:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static setTestAppId(I)V
    .locals 0

    .prologue
    .line 76
    sput p0, Lcom/intentsoftware/addapptr/b/a;->testAppId:I

    .line 77
    return-void
.end method

.method public static toHashMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    const-string v1, "app"

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getReportingAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v1, "appID"

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getReportingAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v1, "lang"

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getLang()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v1, "model"

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const-string v1, "idfa"

    invoke-static {}, Lcom/intentsoftware/addapptr/b/a;->getAdvertisingId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "kitversion"

    sget-object v2, Lcom/intentsoftware/addapptr/b/a;->kitversion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const-string v1, "protocolversion"

    const-string v2, "12"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-object v0
.end method
