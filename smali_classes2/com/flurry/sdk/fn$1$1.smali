.class final Lcom/flurry/sdk/fn$1$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fn$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/flurry/sdk/fn$1;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fn$1;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/flurry/sdk/fn$1$1;->b:Lcom/flurry/sdk/fn$1;

    iput-object p2, p0, Lcom/flurry/sdk/fn$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/flurry/sdk/fn$1$1;->b:Lcom/flurry/sdk/fn$1;

    iget-object v0, v0, Lcom/flurry/sdk/fn$1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flurry/sdk/fn$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    return-void
.end method
