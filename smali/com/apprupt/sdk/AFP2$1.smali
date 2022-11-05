.class Lcom/apprupt/sdk/AFP2$1;
.super Ljava/lang/Object;
.source "AFP2.java"

# interfaces
.implements Lcom/apprupt/sdk/CvAppsList$MultiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/AFP2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/AFP2;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/AFP2;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/apprupt/sdk/AFP2$1;->a:Lcom/apprupt/sdk/AFP2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/apprupt/sdk/CvAppInfo;->a()Lcom/apprupt/sdk/CvAppInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/apprupt/sdk/CvAppInfo;->a:Lcom/apprupt/sdk/CvAppsList;

    new-instance v1, Lcom/apprupt/sdk/AFP2$1$1;

    invoke-direct {v1, p0, p1}, Lcom/apprupt/sdk/AFP2$1$1;-><init>(Lcom/apprupt/sdk/AFP2$1;Ljava/util/Set;)V

    invoke-virtual {v0, v1}, Lcom/apprupt/sdk/CvAppsList;->a(Lcom/apprupt/sdk/CvAppsList$MultiAppInfoListener;)V

    .line 53
    return-void
.end method
