.class final Lcom/flurry/sdk/fn$4;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fn;->a(Landroid/view/View;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/fn;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fn;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/flurry/sdk/fn$4;->c:Lcom/flurry/sdk/fn;

    iput-object p2, p0, Lcom/flurry/sdk/fn$4;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/flurry/sdk/fn$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 125
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 126
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/flurry/sdk/fn$4;->a:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/flurry/sdk/fn$4;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/fn$4;->a:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/flurry/sdk/fn$4;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
