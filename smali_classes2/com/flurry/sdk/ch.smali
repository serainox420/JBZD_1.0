.class public Lcom/flurry/sdk/ch;
.super Lcom/flurry/sdk/bm;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ch$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/reflect/Method;


# instance fields
.field private final e:Ljava/lang/String;

.field private f:Lcom/inmobi/monetization/IMInterstitial;

.field private g:Lcom/flurry/sdk/ch$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 21
    const-class v0, Lcom/flurry/sdk/ch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/ch;->c:Ljava/lang/String;

    .line 1081
    const/4 v1, 0x0

    .line 1082
    const-class v0, Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1083
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v0, v3, v2

    .line 1084
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1085
    const-string v6, "setIMInterstitialListener"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "setImInterstitialListener"

    .line 1086
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 22
    :cond_0
    :goto_1
    sput-object v0, Lcom/flurry/sdk/ch;->d:Ljava/lang/reflect/Method;

    return-void

    .line 1083
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/flurry/sdk/r;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/flurry/sdk/bm;-><init>(Landroid/content/Context;Lcom/flurry/sdk/r;)V

    .line 31
    const-string v0, "com.flurry.inmobi.MY_APP_ID"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ch;->e:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/flurry/sdk/ch;->c()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/inmobi/commons/InMobi;->initialize(Landroid/app/Activity;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/flurry/sdk/ch;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 57
    new-instance v1, Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {p0}, Lcom/flurry/sdk/ch;->c()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/flurry/sdk/ch;->e:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/inmobi/monetization/IMInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/flurry/sdk/ch;->f:Lcom/inmobi/monetization/IMInterstitial;

    .line 58
    new-instance v0, Lcom/flurry/sdk/ch$a;

    invoke-direct {v0, p0, v3}, Lcom/flurry/sdk/ch$a;-><init>(Lcom/flurry/sdk/ch;B)V

    iput-object v0, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/ch$a;

    .line 59
    iget-object v0, p0, Lcom/flurry/sdk/ch;->f:Lcom/inmobi/monetization/IMInterstitial;

    iget-object v1, p0, Lcom/flurry/sdk/ch;->g:Lcom/flurry/sdk/ch$a;

    .line 1066
    if-eqz v0, :cond_0

    .line 1071
    :try_start_0
    sget-object v2, Lcom/flurry/sdk/ch;->d:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 1072
    sget-object v2, Lcom/flurry/sdk/ch;->d:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/flurry/sdk/ch;->f:Lcom/inmobi/monetization/IMInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/monetization/IMInterstitial;->loadInterstitial()V

    .line 62
    return-void

    .line 1076
    :catch_0
    move-exception v0

    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/ch;->c:Ljava/lang/String;

    const-string v2, "InMobi set listener failed."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
