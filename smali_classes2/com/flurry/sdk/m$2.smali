.class final Lcom/flurry/sdk/m$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/m;
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

.field final synthetic b:Lcom/flurry/sdk/m;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/m;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/flurry/sdk/m$2;->b:Lcom/flurry/sdk/m;

    iput-object p2, p0, Lcom/flurry/sdk/m$2;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 184
    check-cast p2, Landroid/graphics/Bitmap;

    .line 1187
    const/4 v0, 0x3

    invoke-static {}, Lcom/flurry/sdk/m;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Image request -- HTTP status code is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1220
    iget v3, p1, Lcom/flurry/sdk/ku;->p:I

    .line 1187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1189
    invoke-virtual {p1}, Lcom/flurry/sdk/ks;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/flurry/sdk/m$2;->b:Lcom/flurry/sdk/m;

    iget-object v1, p0, Lcom/flurry/sdk/m$2;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1, p2}, Lcom/flurry/sdk/m;->a(Lcom/flurry/sdk/m;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 184
    :cond_0
    return-void
.end method
