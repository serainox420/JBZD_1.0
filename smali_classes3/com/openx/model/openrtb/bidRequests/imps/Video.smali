.class public Lcom/openx/model/openrtb/bidRequests/imps/Video;
.super Lcom/openx/model/openrtb/bidRequests/BaseBid;
.source "Video.java"


# instance fields
.field public api:[I

.field public battr:[I

.field public boxingallowed:Ljava/lang/Integer;

.field public companionad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/openx/model/openrtb/bidRequests/imps/videos/Companionad;",
            ">;"
        }
    .end annotation
.end field

.field public companiontype:[I

.field public delivery:[I

.field public h:Ljava/lang/Integer;

.field private jsonObject:Lorg/json/JSONObject;

.field public linearity:Ljava/lang/Integer;

.field public maxbitrate:Ljava/lang/Integer;

.field public maxduration:Ljava/lang/Integer;

.field public maxextended:Ljava/lang/Integer;

.field public mimes:[Ljava/lang/String;

.field public minbitrate:Ljava/lang/Integer;

.field public minduration:Ljava/lang/Integer;

.field public playbackmethod:[I

.field public pos:Ljava/lang/Integer;

.field public protocol:Ljava/lang/Integer;

.field public protocols:[I

.field public sequence:Ljava/lang/Integer;

.field public startdelay:Ljava/lang/Integer;

.field public w:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Lcom/openx/model/openrtb/bidRequests/BaseBid;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->mimes:[Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->minduration:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->maxduration:Ljava/lang/Integer;

    .line 19
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->protocol:Ljava/lang/Integer;

    .line 23
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->w:Ljava/lang/Integer;

    .line 24
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->h:Ljava/lang/Integer;

    .line 25
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->startdelay:Ljava/lang/Integer;

    .line 26
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->linearity:Ljava/lang/Integer;

    .line 27
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->sequence:Ljava/lang/Integer;

    .line 28
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->maxextended:Ljava/lang/Integer;

    .line 29
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->minbitrate:Ljava/lang/Integer;

    .line 30
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->maxbitrate:Ljava/lang/Integer;

    .line 31
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->boxingallowed:Ljava/lang/Integer;

    .line 34
    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->pos:Ljava/lang/Integer;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->companionad:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 47
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    .line 49
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->mimes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 51
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 53
    :goto_0
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->mimes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->mimes:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "mimes"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "minduration"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->minduration:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "maxduration"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->maxduration:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->protocols:[I

    if-eqz v0, :cond_3

    .line 67
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 69
    :goto_1
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->protocols:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 71
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->protocols:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "protocols"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "w"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->w:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "h"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->h:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "startdelay"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->startdelay:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "linearity"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->linearity:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "sequence"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->sequence:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "maxextended"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->maxextended:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "minbitrate"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->minbitrate:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "maxbitrate"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->maxbitrate:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "boxingallowed"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->boxingallowed:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->playbackmethod:[I

    if-eqz v0, :cond_5

    .line 92
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 94
    :goto_2
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->playbackmethod:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 96
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->playbackmethod:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "playbackmethod"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    :cond_5
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->delivery:[I

    if-eqz v0, :cond_7

    .line 105
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 107
    :goto_3
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->delivery:[I

    array-length v3, v3

    if-ge v0, v3, :cond_6

    .line 109
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->delivery:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 107
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "delivery"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "pos"

    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->pos:Ljava/lang/Integer;

    invoke-virtual {p0, v0, v2, v3}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->battr:[I

    if-eqz v0, :cond_9

    .line 121
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 123
    :goto_4
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->battr:[I

    array-length v3, v3

    if-ge v0, v3, :cond_8

    .line 125
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->battr:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 129
    :cond_8
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "battr"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    :cond_9
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->api:[I

    if-eqz v0, :cond_b

    .line 134
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    move v0, v1

    .line 136
    :goto_5
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->api:[I

    array-length v3, v3

    if-ge v0, v3, :cond_a

    .line 138
    iget-object v3, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->api:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 142
    :cond_a
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v3, "api"

    invoke-virtual {p0, v0, v3, v2}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 145
    :cond_b
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->companiontype:[I

    if-eqz v0, :cond_d

    .line 147
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 149
    :goto_6
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->companiontype:[I

    array-length v2, v2

    if-ge v1, v2, :cond_c

    .line 151
    iget-object v2, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->companiontype:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 155
    :cond_c
    iget-object v1, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "companiontype"

    invoke-virtual {p0, v1, v2, v0}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 158
    :cond_d
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->companionad:Ljava/util/List;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->companionad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_f

    .line 160
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 162
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->companionad:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/openx/model/openrtb/bidRequests/imps/videos/Companionad;

    .line 163
    invoke-virtual {v0}, Lcom/openx/model/openrtb/bidRequests/imps/videos/Companionad;->getJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_7

    .line 166
    :cond_e
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "companionad"

    invoke-virtual {p0, v0, v2, v1}, Lcom/openx/model/openrtb/bidRequests/imps/Video;->toJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    :cond_f
    iget-object v0, p0, Lcom/openx/model/openrtb/bidRequests/imps/Video;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method
