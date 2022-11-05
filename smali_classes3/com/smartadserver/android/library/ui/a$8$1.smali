.class Lcom/smartadserver/android/library/ui/a$8$1;
.super Ljava/lang/Object;
.source "SASNativeVideoLayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartadserver/android/library/ui/a$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/smartadserver/android/library/ui/a$8;


# direct methods
.method constructor <init>(Lcom/smartadserver/android/library/ui/a$8;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/smartadserver/android/library/ui/a$8$1;->b:Lcom/smartadserver/android/library/ui/a$8;

    iput-object p2, p0, Lcom/smartadserver/android/library/ui/a$8$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1689
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a$8$1;->b:Lcom/smartadserver/android/library/ui/a$8;

    iget-object v0, v0, Lcom/smartadserver/android/library/ui/a$8;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smartadserver/android/library/ui/a$8$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1690
    return-void
.end method
