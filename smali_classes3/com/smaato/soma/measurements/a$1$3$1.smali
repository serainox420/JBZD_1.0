.class Lcom/smaato/soma/measurements/a$1$3$1;
.super Lcom/smaato/soma/l;
.source "BannerMeasurements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/measurements/a$1$3;->run()V
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
.field final synthetic a:Lcom/smaato/soma/measurements/a$1$3;


# direct methods
.method constructor <init>(Lcom/smaato/soma/measurements/a$1$3;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/smaato/soma/measurements/a$1$3$1;->a:Lcom/smaato/soma/measurements/a$1$3;

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
    .line 219
    iget-object v0, p0, Lcom/smaato/soma/measurements/a$1$3$1;->a:Lcom/smaato/soma/measurements/a$1$3;

    iget-boolean v0, v0, Lcom/smaato/soma/measurements/a$1$3;->a:Z

    if-nez v0, :cond_0

    .line 220
    invoke-static {}, Lcom/smaato/soma/measurements/b;->a()Lcom/smaato/soma/measurements/b;

    move-result-object v0

    sget-object v1, Lcom/smaato/soma/measurements/FraudesType;->BANNER_OVERLAP:Lcom/smaato/soma/measurements/FraudesType;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/measurements/b;->a(Lcom/smaato/soma/measurements/FraudesType;)V

    .line 222
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
    .line 216
    invoke-virtual {p0}, Lcom/smaato/soma/measurements/a$1$3$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
