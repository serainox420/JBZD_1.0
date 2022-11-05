.class public abstract Lcom/smartadserver/android/library/e/a/a;
.super Ljava/lang/Object;
.source "SASAbstractHttpHelper.java"


# static fields
.field private static f:J


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field protected e:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/smartadserver/android/library/e/a/a;->f:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/smartadserver/android/library/e/a/a;->e:J

    .line 42
    invoke-static {p1}, Lcom/smartadserver/android/library/g/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a/a;->a:Ljava/lang/String;

    .line 43
    invoke-static {p1}, Lcom/smartadserver/android/library/g/c;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a/a;->b:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/smartadserver/android/library/g/c;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a/a;->c:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/smartadserver/android/library/g/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartadserver/android/library/e/a/a;->d:Ljava/lang/String;

    .line 46
    return-void
.end method

.method protected static a(Z)Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    if-nez p0, :cond_0

    sget-wide v0, Lcom/smartadserver/android/library/e/a/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 55
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/smartadserver/android/library/e/a/a;->f:J

    .line 57
    :cond_1
    sget-wide v0, Lcom/smartadserver/android/library/e/a/a;->f:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/smartadserver/android/library/e/a/a;->e:J

    return-wide v0
.end method

.method public abstract a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
.end method

.method public abstract a(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/apache/http/client/methods/HttpPost;
.end method

.method protected b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const-string v0, "cell"

    .line 67
    invoke-static {}, Lcom/smartadserver/android/library/g/c;->b()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 68
    const-string v0, "wifi"

    .line 70
    :cond_0
    return-object v0
.end method
