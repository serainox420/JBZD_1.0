.class final Lcom/mopub/nativeads/NativeRendererHelper$2;
.super Ljava/lang/Object;
.source "NativeRendererHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/nativeads/NativeRendererHelper;->addCtaButton(Landroid/widget/TextView;Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mopub/nativeads/NativeRendererHelper$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mopub/nativeads/NativeRendererHelper$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 106
    return-void
.end method
