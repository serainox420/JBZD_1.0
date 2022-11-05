.class final Lcom/flurry/sdk/eg$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/eg$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Lcom/flurry/sdk/eg$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eg$a;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/flurry/sdk/eg$a$1;->b:Lcom/flurry/sdk/eg$a;

    iput-object p2, p0, Lcom/flurry/sdk/eg$a$1;->a:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/flurry/sdk/eg$a$1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flurry/sdk/eg$a$1;->b:Lcom/flurry/sdk/eg$a;

    .line 1167
    iget-object v1, v1, Lcom/flurry/sdk/eg$a;->a:Landroid/graphics/Bitmap;

    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 194
    return-void
.end method
