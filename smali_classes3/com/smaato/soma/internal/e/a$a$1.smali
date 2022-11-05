.class Lcom/smaato/soma/internal/e/a$a$1;
.super Lcom/smaato/soma/l;
.source "CustomWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smaato/soma/internal/e/a$a;-><init>(Lcom/smaato/soma/internal/e/a;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smaato/soma/l",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/smaato/soma/internal/e/a;

.field final synthetic b:Lcom/smaato/soma/internal/e/a$a;


# direct methods
.method constructor <init>(Lcom/smaato/soma/internal/e/a$a;Lcom/smaato/soma/internal/e/a;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/smaato/soma/internal/e/a$a$1;->b:Lcom/smaato/soma/internal/e/a$a;

    iput-object p2, p0, Lcom/smaato/soma/internal/e/a$a$1;->a:Lcom/smaato/soma/internal/e/a;

    invoke-direct {p0}, Lcom/smaato/soma/l;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/smaato/soma/internal/e/a$a$1;->b:Lcom/smaato/soma/internal/e/a$a;

    invoke-static {}, Lcom/smaato/soma/b/a;->a()Lcom/smaato/soma/b/a;

    move-result-object v1

    iget-object v2, p0, Lcom/smaato/soma/internal/e/a$a$1;->b:Lcom/smaato/soma/internal/e/a$a;

    .line 245
    invoke-virtual {v2}, Lcom/smaato/soma/internal/e/a$a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/smaato/soma/internal/e/a$a$1;->b:Lcom/smaato/soma/internal/e/a$a;

    .line 246
    invoke-virtual {v3}, Lcom/smaato/soma/internal/e/a$a;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 245
    invoke-virtual {v1, v2, v3}, Lcom/smaato/soma/b/a;->b(Landroid/content/res/Resources;Landroid/content/Context;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    .line 247
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/smaato/soma/internal/e/a$a;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 248
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/smaato/soma/internal/e/a$a$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
