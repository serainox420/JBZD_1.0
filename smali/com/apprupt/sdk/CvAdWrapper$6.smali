.class Lcom/apprupt/sdk/CvAdWrapper$6;
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
    .line 130
    iput-object p1, p0, Lcom/apprupt/sdk/CvAdWrapper$6;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/apprupt/sdk/Q$Resolver;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/16 v2, 0x140

    .line 133
    check-cast p1, Lcom/apprupt/sdk/SimpleJSON;

    .line 135
    const/16 v0, 0x32

    const/4 v3, 0x1

    .line 137
    const-string v1, "size"

    invoke-virtual {p1, v1}, Lcom/apprupt/sdk/SimpleJSON;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "size"

    const-string v4, "0x0"

    invoke-virtual {p1, v1, v4}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "x"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_a

    .line 138
    const/4 v0, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 139
    add-int/lit8 v0, v5, 0x1

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    :goto_0
    const-string v4, "maximize"

    invoke-virtual {p1, v4}, Lcom/apprupt/sdk/SimpleJSON;->f(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 143
    const-string v4, "maximize"

    invoke-virtual {p1, v4}, Lcom/apprupt/sdk/SimpleJSON;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 144
    const-string v5, "ratio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 145
    const/16 v3, 0x21

    .line 160
    :cond_0
    :goto_1
    and-int/lit8 v4, v3, 0x20

    if-nez v4, :cond_9

    .line 161
    if-gtz v1, :cond_8

    .line 163
    or-int/lit8 v1, v3, 0x4

    .line 165
    :goto_2
    if-gtz v0, :cond_7

    .line 166
    iget-object v3, p0, Lcom/apprupt/sdk/CvAdWrapper$6;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v3}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v3

    iget-boolean v3, v3, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-eqz v3, :cond_6

    .line 167
    or-int/lit8 v1, v1, 0x10

    .line 168
    const/16 v2, 0x172

    move v6, v1

    move v1, v0

    move v0, v6

    .line 175
    :goto_3
    iget-object v3, p0, Lcom/apprupt/sdk/CvAdWrapper$6;->a:Lcom/apprupt/sdk/CvAdWrapper;

    new-instance v4, Lcom/apprupt/sdk/mediation/Size;

    invoke-direct {v4, v0, v2, v1}, Lcom/apprupt/sdk/mediation/Size;-><init>(III)V

    invoke-static {v3, v4}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;Lcom/apprupt/sdk/mediation/Size;)Lcom/apprupt/sdk/mediation/Size;

    .line 176
    invoke-interface {p2, p1}, Lcom/apprupt/sdk/Q$Resolver;->a(Ljava/lang/Object;)V

    .line 177
    return-void

    .line 147
    :cond_1
    const-string v5, "width"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "both"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 148
    :cond_2
    const/4 v3, 0x5

    .line 150
    :cond_3
    const-string v5, "height"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "both"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 151
    :cond_4
    iget-object v4, p0, Lcom/apprupt/sdk/CvAdWrapper$6;->a:Lcom/apprupt/sdk/CvAdWrapper;

    invoke-static {v4}, Lcom/apprupt/sdk/CvAdWrapper;->a(Lcom/apprupt/sdk/CvAdWrapper;)Lcom/apprupt/sdk/CvMediator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/apprupt/sdk/CvMediator;->a()Lcom/apprupt/sdk/CvContentOptions;

    move-result-object v4

    iget-boolean v4, v4, Lcom/apprupt/sdk/CvContentOptions;->d:Z

    if-eqz v4, :cond_5

    .line 152
    or-int/lit8 v3, v3, 0x10

    goto :goto_1

    .line 154
    :cond_5
    or-int/lit8 v3, v3, 0x8

    goto :goto_1

    .line 170
    :cond_6
    or-int/lit8 v0, v1, 0x8

    .line 171
    const/16 v1, 0x4b

    goto :goto_3

    :cond_7
    move v6, v1

    move v1, v0

    move v0, v6

    goto :goto_3

    :cond_8
    move v2, v1

    move v1, v3

    goto :goto_2

    :cond_9
    move v2, v1

    move v1, v0

    move v0, v3

    goto :goto_3

    :cond_a
    move v1, v2

    goto/16 :goto_0
.end method
