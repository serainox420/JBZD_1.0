.class Lcom/smaato/soma/measurements/a$1;
.super Lcom/smaato/soma/l;
.source "BannerMeasurements.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/measurements/a;->a(Lcom/smaato/soma/j;)V
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
.field final synthetic a:Lcom/smaato/soma/j;

.field final synthetic b:Lcom/smaato/soma/measurements/a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/measurements/a;Lcom/smaato/soma/j;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/smaato/soma/measurements/a$1;->b:Lcom/smaato/soma/measurements/a;

    iput-object p2, p0, Lcom/smaato/soma/measurements/a$1;->a:Lcom/smaato/soma/j;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0xbb8

    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 172
    iget-object v1, p0, Lcom/smaato/soma/measurements/a$1;->b:Lcom/smaato/soma/measurements/a;

    iget-object v2, p0, Lcom/smaato/soma/measurements/a$1;->a:Lcom/smaato/soma/j;

    invoke-static {v1, v2}, Lcom/smaato/soma/measurements/a;->a(Lcom/smaato/soma/measurements/a;Lcom/smaato/soma/j;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Lcom/smaato/soma/measurements/a$1$1;

    invoke-direct {v1, p0}, Lcom/smaato/soma/measurements/a$1$1;-><init>(Lcom/smaato/soma/measurements/a$1;)V

    .line 188
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/smaato/soma/measurements/a$1;->b:Lcom/smaato/soma/measurements/a;

    iget-object v2, p0, Lcom/smaato/soma/measurements/a$1;->a:Lcom/smaato/soma/j;

    invoke-static {v1, v2}, Lcom/smaato/soma/measurements/a;->b(Lcom/smaato/soma/measurements/a;Lcom/smaato/soma/j;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 192
    new-instance v1, Lcom/smaato/soma/measurements/a$1$2;

    invoke-direct {v1, p0}, Lcom/smaato/soma/measurements/a$1$2;-><init>(Lcom/smaato/soma/measurements/a$1;)V

    .line 205
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/smaato/soma/measurements/a$1;->a:Lcom/smaato/soma/j;

    instance-of v1, v1, Lcom/smaato/soma/b/c;

    if-eqz v1, :cond_3

    .line 229
    :cond_2
    :goto_0
    return-object v3

    .line 212
    :cond_3
    iget-object v1, p0, Lcom/smaato/soma/measurements/a$1;->b:Lcom/smaato/soma/measurements/a;

    iget-object v2, p0, Lcom/smaato/soma/measurements/a$1;->a:Lcom/smaato/soma/j;

    invoke-static {v1, v2}, Lcom/smaato/soma/measurements/a;->c(Lcom/smaato/soma/measurements/a;Lcom/smaato/soma/j;)Z

    move-result v1

    .line 213
    if-nez v1, :cond_2

    .line 214
    new-instance v2, Lcom/smaato/soma/measurements/a$1$3;

    invoke-direct {v2, p0, v1}, Lcom/smaato/soma/measurements/a$1$3;-><init>(Lcom/smaato/soma/measurements/a$1;Z)V

    .line 227
    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/smaato/soma/measurements/a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
