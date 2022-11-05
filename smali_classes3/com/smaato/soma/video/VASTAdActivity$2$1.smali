.class Lcom/smaato/soma/video/VASTAdActivity$2$1;
.super Ljava/lang/Object;
.source "VASTAdActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 162
    iput-object p1, p0, Lcom/smaato/soma/video/VASTAdActivity$2$1;->b:Lcom/smaato/soma/video/VASTAdActivity$2;

    iput-object p2, p0, Lcom/smaato/soma/video/VASTAdActivity$2$1;->a:Lcom/smaato/soma/internal/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 166
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$2$1;->a:Lcom/smaato/soma/internal/d/a;

    invoke-virtual {v0}, Lcom/smaato/soma/internal/d/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/smaato/soma/video/VASTAdActivity$2$1;->a:Lcom/smaato/soma/internal/d/a;

    .line 168
    invoke-virtual {v2}, Lcom/smaato/soma/internal/d/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 169
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/smaato/soma/video/VASTAdActivity$2$1;->b:Lcom/smaato/soma/video/VASTAdActivity$2;

    iget-object v1, v1, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-virtual {v1, v0}, Lcom/smaato/soma/video/VASTAdActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    iget-object v0, p0, Lcom/smaato/soma/video/VASTAdActivity$2$1;->b:Lcom/smaato/soma/video/VASTAdActivity$2;

    iget-object v0, v0, Lcom/smaato/soma/video/VASTAdActivity$2;->a:Lcom/smaato/soma/video/VASTAdActivity;

    invoke-static {v0}, Lcom/smaato/soma/video/VASTAdActivity;->a(Lcom/smaato/soma/video/VASTAdActivity;)V

    .line 174
    :cond_0
    return-void
.end method
