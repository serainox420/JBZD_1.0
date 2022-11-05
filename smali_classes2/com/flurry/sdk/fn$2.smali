.class final Lcom/flurry/sdk/fn$2;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/fn;->a(Landroid/widget/ImageView;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/flurry/sdk/fn;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fn;Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/flurry/sdk/fn$2;->c:Lcom/flurry/sdk/fn;

    iput-object p2, p0, Lcom/flurry/sdk/fn$2;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/flurry/sdk/fn$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/flurry/sdk/fn$2;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/flurry/sdk/fn$2;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 77
    return-void
.end method
