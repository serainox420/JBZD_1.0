.class public Lcom/smaato/soma/mediation/h;
.super Ljava/lang/Object;
.source "MediationEventBannerAdapterFactory.java"


# static fields
.field protected static a:Lcom/smaato/soma/mediation/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/smaato/soma/mediation/h;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/h;-><init>()V

    sput-object v0, Lcom/smaato/soma/mediation/h;->a:Lcom/smaato/soma/mediation/h;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/smaato/soma/j;Ljava/lang/String;Lcom/smaato/soma/mediation/o;Lcom/smaato/soma/mediation/f$a;)Lcom/smaato/soma/mediation/g;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/smaato/soma/mediation/g;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/smaato/soma/mediation/g;-><init>(Lcom/smaato/soma/j;Ljava/lang/String;Lcom/smaato/soma/mediation/o;Lcom/smaato/soma/mediation/f$a;)V

    return-object v0
.end method
