.class public final Lcom/flurry/sdk/hn$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/hn;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/hn;I)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/flurry/sdk/hn$3;->b:Lcom/flurry/sdk/hn;

    iput p2, p0, Lcom/flurry/sdk/hn$3;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/flurry/sdk/hn$3;->b:Lcom/flurry/sdk/hn;

    .line 1025
    iget-object v0, v0, Lcom/flurry/sdk/hn;->a:Landroid/widget/TextView;

    .line 182
    iget v1, p0, Lcom/flurry/sdk/hn$3;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    return-void
.end method
