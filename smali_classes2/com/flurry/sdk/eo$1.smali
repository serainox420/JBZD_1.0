.class final Lcom/flurry/sdk/eo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ks$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/eo;->a(Ljava/lang/String;ILcom/flurry/sdk/eo$a;)V
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
.field final synthetic a:Lcom/flurry/sdk/eo$a;

.field final synthetic b:I

.field final synthetic c:Lcom/flurry/sdk/eo;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/eo;Lcom/flurry/sdk/eo$a;I)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/flurry/sdk/eo$1;->c:Lcom/flurry/sdk/eo;

    iput-object p2, p0, Lcom/flurry/sdk/eo$1;->a:Lcom/flurry/sdk/eo$a;

    iput p3, p0, Lcom/flurry/sdk/eo$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 44
    check-cast p2, Landroid/graphics/Bitmap;

    .line 1047
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/eo$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/flurry/sdk/eo$1$1;-><init>(Lcom/flurry/sdk/eo$1;Lcom/flurry/sdk/ks;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jy;->a(Ljava/lang/Runnable;)V

    .line 44
    return-void
.end method
