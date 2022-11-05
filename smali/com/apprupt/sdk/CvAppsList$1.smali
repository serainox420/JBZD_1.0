.class Lcom/apprupt/sdk/CvAppsList$1;
.super Ljava/lang/Object;
.source "CvAppsList.java"

# interfaces
.implements Lcom/apprupt/sdk/CvAppsList$MultiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apprupt/sdk/CvAppsList;->a(Ljava/lang/String;Lcom/apprupt/sdk/CvAppsList$SingleListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvAppsList$SingleListener;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/apprupt/sdk/CvAppsList;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvAppsList;Lcom/apprupt/sdk/CvAppsList$SingleListener;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/apprupt/sdk/CvAppsList$1;->c:Lcom/apprupt/sdk/CvAppsList;

    iput-object p2, p0, Lcom/apprupt/sdk/CvAppsList$1;->a:Lcom/apprupt/sdk/CvAppsList$SingleListener;

    iput-object p3, p0, Lcom/apprupt/sdk/CvAppsList$1;->b:Ljava/lang/String;

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
    .line 63
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 64
    iget-object v1, p0, Lcom/apprupt/sdk/CvAppsList$1;->a:Lcom/apprupt/sdk/CvAppsList$SingleListener;

    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList$1;->b:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/apprupt/sdk/CvAppsList$State;->a:Lcom/apprupt/sdk/CvAppsList$State;

    :goto_0
    invoke-interface {v1, v0}, Lcom/apprupt/sdk/CvAppsList$SingleListener;->a(Lcom/apprupt/sdk/CvAppsList$State;)V

    .line 68
    :goto_1
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/apprupt/sdk/CvAppsList$State;->b:Lcom/apprupt/sdk/CvAppsList$State;

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvAppsList$1;->a:Lcom/apprupt/sdk/CvAppsList$SingleListener;

    sget-object v1, Lcom/apprupt/sdk/CvAppsList$State;->c:Lcom/apprupt/sdk/CvAppsList$State;

    invoke-interface {v0, v1}, Lcom/apprupt/sdk/CvAppsList$SingleListener;->a(Lcom/apprupt/sdk/CvAppsList$State;)V

    goto :goto_1
.end method
