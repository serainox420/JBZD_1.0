.class Lcom/apprupt/sdk/CvInlineAdWrapper$4;
.super Ljava/lang/Object;
.source "CvInlineAdWrapper.java"

# interfaces
.implements Lcom/apprupt/sdk/CvCloseButton$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper;->a(Lcom/apprupt/sdk/adview/CloseButtonPosition;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/apprupt/sdk/CvInlineAdWrapper;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$4;->b:Lcom/apprupt/sdk/CvInlineAdWrapper;

    iput-object p2, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$4;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$4;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 284
    return-void
.end method
