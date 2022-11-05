.class Lcom/smaato/soma/video/c$3;
.super Lcom/smaato/soma/l;
.source "VASTView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/c;->g()V
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
.field final synthetic a:Lcom/smaato/soma/video/c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/c;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 232
    new-instance v0, Lcom/smaato/soma/video/c$3$1;

    invoke-direct {v0, p0}, Lcom/smaato/soma/video/c$3$1;-><init>(Lcom/smaato/soma/video/c$3;)V

    .line 262
    iget-object v1, p0, Lcom/smaato/soma/video/c$3;->a:Lcom/smaato/soma/video/c;

    iget-object v1, v1, Lcom/smaato/soma/video/c;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 263
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
    .line 228
    invoke-virtual {p0}, Lcom/smaato/soma/video/c$3;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
