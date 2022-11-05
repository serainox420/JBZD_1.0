.class final Lcom/flurry/sdk/fb$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/es$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fb;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;Z)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/flurry/sdk/fb$1;->b:Lcom/flurry/sdk/fb;

    iput-boolean p2, p0, Lcom/flurry/sdk/fb$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/el;)V
    .locals 3

    .prologue
    .line 152
    .line 1025
    invoke-static {p1}, Lcom/flurry/sdk/ed;->a(Lcom/flurry/sdk/el;)V

    .line 153
    iget-object v0, p0, Lcom/flurry/sdk/fb$1;->b:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;)V

    .line 156
    iget-boolean v0, p0, Lcom/flurry/sdk/fb$1;->a:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Landroid/support/customtabs/c$a;

    invoke-direct {v0}, Landroid/support/customtabs/c$a;-><init>()V

    .line 158
    invoke-virtual {v0}, Landroid/support/customtabs/c$a;->a()Landroid/support/customtabs/c;

    move-result-object v1

    .line 160
    iget-object v0, v1, Landroid/support/customtabs/c;->a:Landroid/content/Intent;

    const/high16 v2, 0x50000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 161
    iget-object v0, p0, Lcom/flurry/sdk/fb$1;->b:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->b(Lcom/flurry/sdk/fb;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {p1}, Lcom/flurry/sdk/ef;->a(Lcom/flurry/sdk/el;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/customtabs/c;->launchUrl(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 163
    iget-object v0, p0, Lcom/flurry/sdk/fb$1;->b:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->c(Lcom/flurry/sdk/fb;)Lcom/flurry/sdk/ho;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/ho;->b()V

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fb$1;->b:Lcom/flurry/sdk/fb;

    invoke-static {p1}, Lcom/flurry/sdk/ef;->a(Lcom/flurry/sdk/el;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;Lcom/flurry/sdk/el;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 172
    sget-object v0, Lcom/flurry/sdk/ei;->g:Lcom/flurry/sdk/ei;

    iget-object v1, p0, Lcom/flurry/sdk/fb$1;->b:Lcom/flurry/sdk/fb;

    invoke-static {v1}, Lcom/flurry/sdk/fb;->d(Lcom/flurry/sdk/fb;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/flurry/sdk/eh;->a(Lcom/flurry/sdk/ei;ILjava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/flurry/sdk/fb$1;->b:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->a(Lcom/flurry/sdk/fb;)V

    .line 174
    return-void
.end method
