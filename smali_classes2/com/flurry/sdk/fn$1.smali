.class final Lcom/flurry/sdk/fn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fn;->a(Landroid/widget/ImageView;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/ks$a",
        "<",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/flurry/sdk/fn;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fn;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/flurry/sdk/fn$1;->b:Lcom/flurry/sdk/fn;

    iput-object p2, p0, Lcom/flurry/sdk/fn$1;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 52
    check-cast p2, Landroid/graphics/Bitmap;

    .line 1055
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/fn;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Image request -- HTTP status code is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    iget v3, p1, Lcom/flurry/sdk/ku;->p:I

    .line 1055
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1057
    invoke-virtual {p1}, Lcom/flurry/sdk/ks;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1058
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/fn$1$1;

    invoke-direct {v1, p0, p2}, Lcom/flurry/sdk/fn$1$1;-><init>(Lcom/flurry/sdk/fn$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 52
    :cond_0
    return-void
.end method
