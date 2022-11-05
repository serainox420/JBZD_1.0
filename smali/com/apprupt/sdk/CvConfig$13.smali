.class Lcom/apprupt/sdk/CvConfig$13;
.super Ljava/lang/Object;
.source "CvConfig.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvConfig;->b(Lcom/apprupt/sdk/CvConfig$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvConfig$Listener;

.field final synthetic b:Lcom/apprupt/sdk/CvConfig;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvConfig;Lcom/apprupt/sdk/CvConfig$Listener;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/apprupt/sdk/CvConfig$13;->b:Lcom/apprupt/sdk/CvConfig;

    iput-object p2, p0, Lcom/apprupt/sdk/CvConfig$13;->a:Lcom/apprupt/sdk/CvConfig$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/apprupt/sdk/CvConfig$13;->a:Lcom/apprupt/sdk/CvConfig$Listener;

    iget-object v1, p0, Lcom/apprupt/sdk/CvConfig$13;->b:Lcom/apprupt/sdk/CvConfig;

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvConfig$Listener;->a(Lcom/apprupt/sdk/CvConfig;)V

    .line 284
    return-void
.end method
