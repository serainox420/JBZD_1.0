.class Lcom/adcolony/sdk/ce;
.super Lcom/adcolony/sdk/bh;
.source "SourceFile"


# static fields
.field private static n:Lcom/adcolony/sdk/ce;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/adcolony/sdk/bh;-><init>()V

    return-void
.end method

.method static c()Lcom/adcolony/sdk/ce;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/adcolony/sdk/ce;->n:Lcom/adcolony/sdk/ce;

    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/adcolony/sdk/ce;

    invoke-direct {v0}, Lcom/adcolony/sdk/ce;-><init>()V

    sput-object v0, Lcom/adcolony/sdk/ce;->n:Lcom/adcolony/sdk/ce;

    .line 12
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/ce;->n:Lcom/adcolony/sdk/ce;

    return-object v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method protected a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method protected b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    return-void
.end method
