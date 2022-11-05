.class Lcom/millennialmedia/internal/video/LightboxView$1;
.super Ljava/lang/Object;
.source "LightboxView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/video/LightboxView;-><init>(Landroid/content/Context;Lcom/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd;Lcom/millennialmedia/internal/video/LightboxView$LightboxViewListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/video/LightboxView;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/video/LightboxView;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/millennialmedia/internal/video/LightboxView$1;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/millennialmedia/internal/video/LightboxView$1;->a:Lcom/millennialmedia/internal/video/LightboxView;

    invoke-static {v0}, Lcom/millennialmedia/internal/video/LightboxView;->c(Lcom/millennialmedia/internal/video/LightboxView;)V

    .line 163
    return-void
.end method
