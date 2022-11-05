.class Lcom/apprupt/sdk/CvUrl;
.super Ljava/lang/Object;
.source "CvUrl.java"


# static fields
.field static a:Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "cv.apprupt.com"

    sput-object v0, Lcom/apprupt/sdk/CvUrl;->a:Ljava/lang/String;

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/apprupt/sdk/CvUrl;->b:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "/js/payload.js"

    invoke-static {v0}, Lcom/apprupt/sdk/CvUrl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/apprupt/sdk/CvUrl;->b:Z

    invoke-static {p0, v0}, Lcom/apprupt/sdk/CvUrl;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    if-nez p0, :cond_1

    .line 48
    const-string p0, "/"

    .line 52
    :cond_0
    :goto_0
    const-string v1, "http%s://%s%s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_2

    const-string v0, "s"

    :goto_1
    aput-object v0, v2, v3

    sget-object v0, Lcom/apprupt/sdk/CvUrl;->a:Ljava/lang/String;

    aput-object v0, v2, v4

    const/4 v0, 0x2

    aput-object p0, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 49
    :cond_1
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const-string v0, "/%s"

    new-array v1, v4, [Ljava/lang/Object;

    aput-object p0, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 52
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method
