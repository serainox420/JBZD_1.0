.class Lcom/smaato/soma/video/VASTAdActivity$2$2;
.super Ljava/lang/Object;
.source "VASTAdActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/video/VASTAdActivity$2;->a()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/d/a;

.field final synthetic b:Lcom/smaato/soma/video/VASTAdActivity$2;


# direct methods
.method constructor <init>(Lcom/smaato/soma/video/VASTAdActivity$2;Lcom/smaato/soma/internal/d/a;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/smaato/soma/video/VASTAdActivity$2$2;->b:Lcom/smaato/soma/video/VASTAdActivity$2;

    iput-object p2, p0, Lcom/smaato/soma/video/VASTAdActivity$2$2;->a:Lcom/smaato/soma/internal/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$2$2;->a:Lcom/smaato/soma/internal/d/a;

    invoke-virtual {v1}, Lcom/smaato/soma/internal/d/a;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$2$2;->b:Lcom/smaato/soma/video/VASTAdActivity$2;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    iget-boolean v1, v1, Lcom/smaato/soma/video/VASTAdActivity;->f:Z

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$2$2;->b:Lcom/smaato/soma/video/VASTAdActivity$2;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/smaato/soma/video/VASTAdActivity;->f:Z

    .line 204
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/smaato/soma/video/VASTAdActivity$2$2;->a:Lcom/smaato/soma/internal/d/a;

    .line 205
    invoke-virtual {v3}, Lcom/smaato/soma/internal/d/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 206
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 207
    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity$2$2;->b:Lcom/smaato/soma/video/VASTAdActivity$2;

    iget-object v2, v2, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v2, v1}, Lcom/smaato/soma/video/VASTAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$2$2;->b:Lcom/smaato/soma/video/VASTAdActivity$2;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-static {v1}, Lcom/smaato/soma/video/VASTAdActivity;->a(Lcom/smaato/soma/video/VASTAdActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    const/4 v0, 0x1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 211
    :catch_0
    move-exception v1

    goto :goto_0
.end method
