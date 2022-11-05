.class Lcom/smaato/soma/measurements/a$1$2$1;
.super Lcom/smaato/soma/l;
.source "BannerMeasurements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/measurements/a$1$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/measurements/a$1$2;


# direct methods
.method constructor <init>(Lcom/smaato/soma/measurements/a$1$2;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/smaato/soma/measurements/a$1$2$1;->a:Lcom/smaato/soma/measurements/a$1$2;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/smaato/soma/measurements/a$1$2$1;->a:Lcom/smaato/soma/measurements/a$1$2;

    iget-object v0, v0, Lcom/smaato/soma/measurements/a$1$2;->a:Lcom/smaato/soma/measurements/a$1;

    iget-object v0, v0, Lcom/smaato/soma/measurements/a$1;->b:Lcom/smaato/soma/measurements/a;

    iget-object v1, p0, Lcom/smaato/soma/measurements/a$1$2$1;->a:Lcom/smaato/soma/measurements/a$1$2;

    iget-object v1, v1, Lcom/smaato/soma/measurements/a$1$2;->a:Lcom/smaato/soma/measurements/a$1;

    iget-object v1, v1, Lcom/smaato/soma/measurements/a$1;->a:Lcom/smaato/soma/j;

    invoke-static {v0, v1}, Lcom/smaato/soma/measurements/a;->b(Lcom/smaato/soma/measurements/a;Lcom/smaato/soma/j;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Lcom/smaato/soma/measurements/b;->a()Lcom/smaato/soma/measurements/b;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/measurements/FraudesType;->BANNER_DIMENSION:Lcom/smaato/soma/measurements/FraudesType;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/measurements/b;->a(Lcom/smaato/soma/measurements/FraudesType;)V

    .line 200
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/smaato/soma/measurements/a$1$2$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
