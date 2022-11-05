.class final Lcom/flurry/sdk/fn$3$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fn$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/flurry/sdk/fn$3;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fn$3;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/flurry/sdk/fn$3$1;->b:Lcom/flurry/sdk/fn$3;

    iput-object p2, p0, Lcom/flurry/sdk/fn$3$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 105
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/fn$3$1;->b:Lcom/flurry/sdk/fn$3;

    iget-object v0, v0, Lcom/flurry/sdk/fn$3;->a:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/flurry/sdk/fn$3$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fn$3$1;->b:Lcom/flurry/sdk/fn$3;

    iget-object v0, v0, Lcom/flurry/sdk/fn$3;->a:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/flurry/sdk/fn$3$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
