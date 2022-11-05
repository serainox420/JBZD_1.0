.class Lcom/apprupt/sdk/CvAdWrapper$5;
.super Ljava/lang/Object;
.source "CvAdWrapper.java"

# interfaces
.implements Lcom/apprupt/sdk/Q$Task;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apprupt/sdk/CvAdWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apprupt/sdk/CvAdWrapper;


# direct methods
.method constructor <init>(Lcom/apprupt/sdk/CvAdWrapper;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    check-cast p1, Lcom/apprupt/sdk/SimpleJSON;

    .line 108
    const-string v0, "type"

    const-string v1, "normal"

    invoke-virtual {p1, v0, v1}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apprupt/sdk/CvAdType;->a(Ljava/lang/String;)Lcom/apprupt/sdk/CvAdType;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/apprupt/sdk/CvAdWrapper$9;->a:[I

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvAdType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 125
    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v1, v0}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;Lcom/apprupt/sdk/CvAdType;)Lcom/apprupt/sdk/CvAdType;

    .line 126
    invoke-interface {p2, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 127
    return-void

    .line 111
    :pswitch_0
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$Error;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    const-string v2, "Internal error: fallback type does not match ad placement (clipkit/interstitial)"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAdWrapper$Error;-><init>(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$Fallback;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->CLIPKIT:Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAdWrapper$Fallback;-><init>(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_1
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-nez v0, :cond_1

    .line 116
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$Error;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    const-string v2, "Internal error: fallback type does not match ad placement (adcolony/interstitial)"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAdWrapper$Error;-><init>(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_1
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$Fallback;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->ADCOLONY:Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAdWrapper$Fallback;-><init>(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)V

    throw v0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v0}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v0

    iget-boolean v0, v0, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$Error;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    const-string v2, "Internal error: fallback type does not match ad placement (adcolony/inline)"

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAdWrapper$Error;-><init>(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_2
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$Fallback;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    sget-object v2, Lcom/apprupt/sdk/mediation/Adapter$Info;->ADCOLONY:Lcom/apprupt/sdk/mediation/Adapter$Info;

    invoke-virtual {v2}, Lcom/apprupt/sdk/mediation/Adapter$Info;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAdWrapper$Fallback;-><init>(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)V

    throw v0

    .line 123
    :pswitch_3
    new-instance v0, Lcom/apprupt/sdk/CvAdWrapper$Error;

    iget-object v1, p0, Lcom/apprupt/sdk/CvAdWrapper$5;->a:Lcom/apprupt/sdk/CvAdWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ad type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {p1, v3}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/apprupt/sdk/CvAdWrapper$Error;-><init>(Lcom/apprupt/sdk/CvAdWrapper;Ljava/lang/String;)V

    throw v0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
