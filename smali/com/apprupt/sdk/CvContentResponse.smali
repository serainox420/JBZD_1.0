.class public Lcom/apprupt/sdk/CvContentResponse;
.super Ljava/lang/Object;
.source "CvContentResponse.java"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/Exception;

.field public final e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apprupt/sdk/CvContentResponse;->a:Z

    .line 45
    iput-object p1, p0, Lcom/apprupt/sdk/CvContentResponse;->b:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/apprupt/sdk/CvContentResponse;->d:Ljava/lang/Exception;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvContentResponse;->e:Lorg/json/JSONObject;

    .line 48
    iput p3, p0, Lcom/apprupt/sdk/CvContentResponse;->c:I

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-boolean v1, p0, Lcom/apprupt/sdk/CvContentResponse;->a:Z

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/apprupt/sdk/CvContentResponse;->b:Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apprupt/sdk/CvContentResponse;->d:Ljava/lang/Exception;

    .line 23
    iput-object p1, p0, Lcom/apprupt/sdk/CvContentResponse;->e:Lorg/json/JSONObject;

    .line 24
    iput v1, p0, Lcom/apprupt/sdk/CvContentResponse;->c:I

    .line 25
    return-void
.end method
