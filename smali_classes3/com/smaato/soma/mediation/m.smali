.class public Lcom/smaato/soma/mediation/m;
.super Ljava/lang/Object;
.source "MediationEventInterstitialFactory.java"


# static fields
.field private static a:Lcom/smaato/soma/mediation/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/smaato/soma/mediation/m;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/m;-><init>()V

    sput-object v0, Lcom/smaato/soma/mediation/m;->a:Lcom/smaato/soma/mediation/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/smaato/soma/mediation/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 9
    sget-object v0, Lcom/smaato/soma/mediation/m;->a:Lcom/smaato/soma/mediation/m;

    invoke-virtual {v0, p0}, Lcom/smaato/soma/mediation/m;->b(Ljava/lang/String;)Lcom/smaato/soma/mediation/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b(Ljava/lang/String;)Lcom/smaato/soma/mediation/j;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 18
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/smaato/soma/mediation/j;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 20
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 21
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 22
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/mediation/j;

    return-object v0
.end method
