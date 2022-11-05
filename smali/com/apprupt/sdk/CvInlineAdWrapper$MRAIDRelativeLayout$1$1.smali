.class Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;
.super Ljava/util/TimerTask;
.source "CvInlineAdWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;->a:Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1$1;

    invoke-direct {v0, p0}, Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1$1;-><init>(Lcom/apprupt/sdk/CvInlineAdWrapper$MRAIDRelativeLayout$1$1;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apprupt/sdk/CvViewHelper;->a(Ljava/lang/Runnable;Z)V

    .line 107
    return-void
.end method
