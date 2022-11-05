.class Lcom/smaato/soma/video/c$1;
.super Lcom/smaato/soma/l;
.source "VASTView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/c;-><init>(Landroid/content/Context;Lcom/smaato/soma/internal/d/c;ZLcom/smaato/soma/video/b;IZI)V
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
.field final synthetic a:Lcom/smaato/soma/internal/d/c;

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/smaato/soma/video/b;

.field final synthetic f:I

.field final synthetic g:Lcom/smaato/soma/video/c;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/c;Lcom/smaato/soma/internal/d/c;IZZLcom/smaato/soma/video/b;I)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/smaato/soma/video/c$1;->g:Lcom/smaato/soma/video/c;

    iput-object p2, p0, Lcom/smaato/soma/video/c$1;->a:Lcom/smaato/soma/internal/d/c;

    iput p3, p0, Lcom/smaato/soma/video/c$1;->b:I

    iput-boolean p4, p0, Lcom/smaato/soma/video/c$1;->c:Z

    iput-boolean p5, p0, Lcom/smaato/soma/video/c$1;->d:Z

    iput-object p6, p0, Lcom/smaato/soma/video/c$1;->e:Lcom/smaato/soma/video/b;

    iput p7, p0, Lcom/smaato/soma/video/c$1;->f:I

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
    .line 174
    iget-object v0, p0, Lcom/smaato/soma/video/c$1;->g:Lcom/smaato/soma/video/c;

    iget-object v1, p0, Lcom/smaato/soma/video/c$1;->a:Lcom/smaato/soma/internal/d/c;

    invoke-static {v0, v1}, Lcom/smaato/soma/video/c;->a(Lcom/smaato/soma/video/c;Lcom/smaato/soma/internal/d/c;)Lcom/smaato/soma/internal/d/c;

    .line 175
    iget-object v0, p0, Lcom/smaato/soma/video/c$1;->g:Lcom/smaato/soma/video/c;

    iget v1, p0, Lcom/smaato/soma/video/c$1;->b:I

    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/c;->setAutoCloseDuration(I)V

    .line 176
    iget-object v0, p0, Lcom/smaato/soma/video/c$1;->g:Lcom/smaato/soma/video/c;

    iget-boolean v1, p0, Lcom/smaato/soma/video/c$1;->c:Z

    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/c;->setRewardedVideo(Z)V

    .line 177
    iget-object v0, p0, Lcom/smaato/soma/video/c$1;->g:Lcom/smaato/soma/video/c;

    iget-boolean v1, p0, Lcom/smaato/soma/video/c$1;->d:Z

    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/c;->a(Z)V

    .line 178
    iget-object v0, p0, Lcom/smaato/soma/video/c$1;->e:Lcom/smaato/soma/video/b;

    instance-of v0, v0, Lcom/smaato/soma/video/a;

    if-eqz v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/smaato/soma/video/c$1;->g:Lcom/smaato/soma/video/c;

    iget-object v0, p0, Lcom/smaato/soma/video/c$1;->e:Lcom/smaato/soma/video/b;

    check-cast v0, Lcom/smaato/soma/video/a;

    invoke-virtual {v1, v0}, Lcom/smaato/soma/video/c;->setRewardedVideoListener(Lcom/smaato/soma/video/a;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/smaato/soma/video/c$1;->g:Lcom/smaato/soma/video/c;

    invoke-static {v0}, Lcom/smaato/soma/video/c;->a(Lcom/smaato/soma/video/c;)V

    .line 186
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/smaato/soma/video/c$1;->g:Lcom/smaato/soma/video/c;

    iget-object v1, p0, Lcom/smaato/soma/video/c$1;->e:Lcom/smaato/soma/video/b;

    invoke-virtual {v0, v1}, Lcom/smaato/soma/video/c;->setVastAdListener(Lcom/smaato/soma/video/b;)V

    .line 182
    iget-object v0, p0, Lcom/smaato/soma/video/c$1;->g:Lcom/smaato/soma/video/c;

    iget v1, p0, Lcom/smaato/soma/video/c$1;->f:I

    iput v1, v0, Lcom/smaato/soma/video/c;->b:I

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
    .line 171
    invoke-virtual {p0}, Lcom/smaato/soma/video/c$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
