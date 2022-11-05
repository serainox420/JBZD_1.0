.class final Lcom/flurry/sdk/gy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/a;

.field final synthetic b:I

.field final synthetic c:Lcom/flurry/sdk/gy;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/gy;Lcom/flurry/sdk/a;I)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Lcom/flurry/sdk/gy$3;->c:Lcom/flurry/sdk/gy;

    iput-object p2, p0, Lcom/flurry/sdk/gy$3;->a:Lcom/flurry/sdk/a;

    iput p3, p0, Lcom/flurry/sdk/gy$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 275
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 276
    const-string v1, "sourceEvent"

    iget-object v2, p0, Lcom/flurry/sdk/gy$3;->a:Lcom/flurry/sdk/a;

    .line 1055
    iget-object v2, v2, Lcom/flurry/sdk/a;->c:Lcom/flurry/sdk/b;

    .line 276
    iget-object v2, v2, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 1079
    iget-object v2, v2, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 276
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    iget-object v1, p0, Lcom/flurry/sdk/gy$3;->c:Lcom/flurry/sdk/gy;

    sget-object v2, Lcom/flurry/sdk/bc;->t:Lcom/flurry/sdk/bc;

    iget-object v3, p0, Lcom/flurry/sdk/gy$3;->c:Lcom/flurry/sdk/gy;

    invoke-virtual {v3}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v3

    iget v4, p0, Lcom/flurry/sdk/gy$3;->b:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/flurry/sdk/gy;->a(Lcom/flurry/sdk/bc;Ljava/util/Map;Lcom/flurry/sdk/au;I)V

    .line 278
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/flurry/sdk/gy$3;->c:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->isViewAttachedToActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 280
    iget-object v0, p0, Lcom/flurry/sdk/gy$3;->c:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->b(Lcom/flurry/sdk/gy;)Landroid/app/AlertDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/flurry/sdk/gy$3;->c:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->c(Lcom/flurry/sdk/gy;)Landroid/app/AlertDialog;

    .line 282
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/flurry/sdk/gy$3;->c:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->d(Lcom/flurry/sdk/gy;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting fAlertDialog to null."

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/gy$3;->c:Lcom/flurry/sdk/gy;

    invoke-static {v0}, Lcom/flurry/sdk/gy;->e(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/gm;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/flurry/sdk/gy$3;->c:Lcom/flurry/sdk/gy;

    invoke-virtual {v0}, Lcom/flurry/sdk/gy;->getAdController()Lcom/flurry/sdk/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/au;->f()Lcom/flurry/sdk/gp;

    move-result-object v0

    .line 2030
    iget v0, v0, Lcom/flurry/sdk/gp;->a:I

    .line 288
    iget-object v1, p0, Lcom/flurry/sdk/gy$3;->c:Lcom/flurry/sdk/gy;

    invoke-static {v1}, Lcom/flurry/sdk/gy;->e(Lcom/flurry/sdk/gy;)Lcom/flurry/sdk/gm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/gm;->a(I)V

    .line 290
    :cond_1
    return-void
.end method
