.class public final Lcom/flurry/sdk/er;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, ""

    sput-object v0, Lcom/flurry/sdk/er;->a:Ljava/lang/String;

    .line 10
    const-string v0, ""

    sput-object v0, Lcom/flurry/sdk/er;->b:Ljava/lang/String;

    .line 11
    const-string v0, "http://www.tumblr.com/connect/login_success.html"

    sput-object v0, Lcom/flurry/sdk/er;->c:Ljava/lang/String;

    .line 12
    const-string v0, "1.0"

    sput-object v0, Lcom/flurry/sdk/er;->d:Ljava/lang/String;

    .line 13
    const-string v0, "HMAC-SHA1"

    sput-object v0, Lcom/flurry/sdk/er;->e:Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/flurry/sdk/er;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    sput-object p0, Lcom/flurry/sdk/er;->a:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/flurry/sdk/er;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    sput-object p0, Lcom/flurry/sdk/er;->b:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/flurry/sdk/er;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/flurry/sdk/er;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/flurry/sdk/er;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    const-string v0, "application/x-www-form-urlencoded"

    return-object v0
.end method
