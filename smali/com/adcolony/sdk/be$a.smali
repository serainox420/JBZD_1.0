.class Lcom/adcolony/sdk/be$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/adcolony/sdk/be;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/be;Ljava/util/Map;)V
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
    .line 38
    iput-object p1, p0, Lcom/adcolony/sdk/be$a;->b:Lcom/adcolony/sdk/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/adcolony/sdk/be$a;->a:Ljava/util/Map;

    .line 40
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adcolony/sdk/be$a;->a:Ljava/util/Map;

    const-string v1, "md5"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/adcolony/sdk/be$a;->a:Ljava/util/Map;

    const-string v1, "data"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/Float;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adcolony/sdk/be$a;->a:Ljava/util/Map;

    const-string v1, "scale"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method
