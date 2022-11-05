.class final Lcom/flurry/sdk/fb$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/fb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/fb;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/fb;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/flurry/sdk/fb$7;->a:Lcom/flurry/sdk/fb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/flurry/sdk/fb$7;->a:Lcom/flurry/sdk/fb;

    invoke-static {v0}, Lcom/flurry/sdk/fb;->c(Lcom/flurry/sdk/fb;)Lcom/flurry/sdk/ho;

    move-result-object v0

    invoke-interface {v0}, Lcom/flurry/sdk/ho;->a()V

    .line 351
    return-void
.end method
