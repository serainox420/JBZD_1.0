.class public Lcom/apprupt/sdk/CvContentOptions;
.super Ljava/lang/Object;
.source "CvContentOptions.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final f:Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;

.field public final g:Z

.field public final h:Z

.field public i:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 7

    .prologue
    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/apprupt/sdk/CvContentOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 8

    .prologue
    .line 28
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/apprupt/sdk/CvContentOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/apprupt/sdk/mediation/ValueExchangeCompletion;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLcom/apprupt/sdk/mediation/ValueExchangeCompletion;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvContentOptions;->i:Lcom/apprupt/sdk/CvSDK$CvInterstitialListener;

    .line 32
    iput-object p1, p0, Lcom/apprupt/sdk/CvContentOptions;->a:Ljava/lang/String;

    .line 33
    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    iput-object p3, p0, Lcom/apprupt/sdk/CvContentOptions;->b:Ljava/lang/String;

    .line 34
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    iput-object p2, p0, Lcom/apprupt/sdk/CvContentOptions;->c:Ljava/lang/String;

    .line 35
    iput-boolean p4, p0, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    .line 36
    iput-boolean p5, p0, Lcom/apprupt/sdk/CvContentOptions;->e:Z

    .line 37
    if-eqz p7, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/apprupt/sdk/CvContentOptions;->g:Z

    .line 38
    iput-object p7, p0, Lcom/apprupt/sdk/CvContentOptions;->f:Lcom/apprupt/sdk/mediation/ValueExchangeCompletion;

    .line 39
    iput-boolean p6, p0, Lcom/apprupt/sdk/CvContentOptions;->h:Z

    .line 40
    return-void

    .line 37
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
