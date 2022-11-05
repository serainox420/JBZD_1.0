.class Lcom/apprupt/sdk/CvMediation$1;
.super Ljava/lang/Object;
.source "CvMediation.java"

# interfaces
.implements Lcom/apprupt/sdk/CvConfig$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvMediation;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvMediation;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvMediation;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/apprupt/sdk/CvMediation$1;->a:Lcom/apprupt/sdk/CvMediation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apprupt/sdk/CvConfig;)V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/apprupt/sdk/CvMediation$1;->a:Lcom/apprupt/sdk/CvMediation;

    const-string v1, "mediation"

    invoke-virtual {p1, v1}, Lcom/apprupt/sdk/CvConfig;->a(Ljava/lang/String;)Lcom/apprupt/sdk/SimpleJSON;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apprupt/sdk/CvConfig;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/apprupt/sdk/CvMediation;->a(Lcom/apprupt/sdk/CvMediation;Lcom/apprupt/sdk/SimpleJSON;J)V

    .line 55
    return-void
.end method
