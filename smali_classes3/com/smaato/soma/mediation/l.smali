.class public Lcom/smaato/soma/mediation/l;
.super Ljava/lang/Object;
.source "MediationEventInterstitialAdapterFactory.java"


# static fields
.field public static a:Lcom/smaato/soma/mediation/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/smaato/soma/mediation/l;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/l;-><init>()V

    sput-object v0, Lcom/smaato/soma/mediation/l;->a:Lcom/smaato/soma/mediation/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smaato/soma/interstitial/b;Ljava/lang/String;Lcom/smaato/soma/mediation/o;Lcom/smaato/soma/mediation/j$a;)Lcom/smaato/soma/mediation/k;
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/smaato/soma/mediation/k;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smaato/soma/mediation/k;-><init>(Lcom/smaato/soma/interstitial/b;Ljava/lang/String;Lcom/smaato/soma/mediation/o;Lcom/smaato/soma/mediation/j$a;)V

    return-object v0
.end method
