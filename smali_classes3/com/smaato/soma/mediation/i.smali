.class public Lcom/smaato/soma/mediation/i;
.super Ljava/lang/Object;
.source "MediationEventBannerFactory.java"


# static fields
.field private static a:Lcom/smaato/soma/mediation/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/smaato/soma/mediation/i;

    invoke-direct {v0}, Lcom/smaato/soma/mediation/i;-><init>()V

    sput-object v0, Lcom/smaato/soma/mediation/i;->a:Lcom/smaato/soma/mediation/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/smaato/soma/mediation/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 10
    sget-object v0, Lcom/smaato/soma/mediation/i;->a:Lcom/smaato/soma/mediation/i;

    invoke-virtual {v0, p0}, Lcom/smaato/soma/mediation/i;->b(Ljava/lang/String;)Lcom/smaato/soma/mediation/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected b(Ljava/lang/String;)Lcom/smaato/soma/mediation/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/smaato/soma/mediation/f;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 21
    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 22
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 23
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smaato/soma/mediation/f;

    return-object v0
.end method
