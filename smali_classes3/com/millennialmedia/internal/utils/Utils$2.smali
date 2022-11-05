.class final Lcom/millennialmedia/internal/utils/Utils$2;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/internal/utils/Utils;->vibrate([JILcom/millennialmedia/internal/utils/Utils$VibrateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/internal/utils/Utils$VibrateListener;


# direct methods
.method constructor <init>(Lcom/millennialmedia/internal/utils/Utils$VibrateListener;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/millennialmedia/internal/utils/Utils$2;->a:Lcom/millennialmedia/internal/utils/Utils$VibrateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/millennialmedia/internal/utils/Utils$2;->a:Lcom/millennialmedia/internal/utils/Utils$VibrateListener;

    invoke-interface {v0}, Lcom/millennialmedia/internal/utils/Utils$VibrateListener;->onFinished()V

    .line 144
    return-void
.end method
