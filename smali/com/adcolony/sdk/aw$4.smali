.class Lcom/adcolony/sdk/aw$4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/aw;->a(ZLcom/adcolony/sdk/z;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/aw;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/aw;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/adcolony/sdk/aw$4;->a:Lcom/adcolony/sdk/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatch_messages(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 337
    invoke-static {p1}, Lcom/adcolony/sdk/s;->b(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 338
    if-nez v1, :cond_1

    .line 340
    sget-object v0, Lcom/adcolony/sdk/u;->g:Lcom/adcolony/sdk/u;

    const-string v1, "[INTERNAL] ADCJSON parse error in dispatch_messages javascript interface function"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/u;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/u;

    .line 349
    :cond_0
    return-void

    .line 344
    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 346
    sget-object v2, Lcom/adcolony/sdk/a;->m:Lcom/adcolony/sdk/h;

    iget-object v2, v2, Lcom/adcolony/sdk/h;->d:Lcom/adcolony/sdk/ab;

    invoke-static {v1, v0}, Lcom/adcolony/sdk/s;->c(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/ab;->a(Lorg/json/JSONObject;)V

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
