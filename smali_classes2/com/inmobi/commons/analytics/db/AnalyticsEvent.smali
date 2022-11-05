.class public Lcom/inmobi/commons/analytics/db/AnalyticsEvent;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_GOOGLE_API_VALUES;,
        Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;,
        Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;
    }
.end annotation


# static fields
.field public static final EVENT_ID:Ljava/lang/String; = "id"

.field public static final IN_APP:Ljava/lang/String; = "inapp"

.field public static final SUBS:Ljava/lang/String; = "subs"

.field public static final TYPE_CUSTOM_EVENT:Ljava/lang/String; = "ce"

.field public static final TYPE_END_SESSION:Ljava/lang/String; = "es"

.field public static final TYPE_LEVEL_BEGIN:Ljava/lang/String; = "lb"

.field public static final TYPE_LEVEL_END:Ljava/lang/String; = "le"

.field public static final TYPE_START_SESSION:Ljava/lang/String; = "ss"

.field public static final TYPE_TAG_TRANSACTION:Ljava/lang/String; = "pi"

.field public static final TYPE_USER_ATTRIBUTE:Ljava/lang/String; = "ae"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

.field private p:D

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

.field private v:J

.field private w:J

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->b:Ljava/lang/String;

    .line 82
    return-void
.end method


# virtual methods
.method public getAttributeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getAttributeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getEventAttemptCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getEventAttemptTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getEventAttributeMap()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getEventCustomName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getEventId()J
    .locals 2

    .prologue
    .line 85
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->a:J

    return-wide v0
.end method

.method public getEventLevelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getEventLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getEventLevelStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSessionTimeStamp()J
    .locals 2

    .prologue
    .line 291
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->d:J

    return-wide v0
.end method

.method public getEventTableId()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->w:J

    return-wide v0
.end method

.method public getEventTimeStamp()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->v:J

    return-wide v0
.end method

.method public getEventTimeTaken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->r:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->t:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionItemCount()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->q:I

    return v0
.end method

.method public getTransactionItemDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionItemName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionItemPrice()D
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->p:D

    return-wide v0
.end method

.method public getTransactionItemType()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->o:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    if-nez v0, :cond_0

    .line 110
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->getValue()I

    move-result v0

    .line 111
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->o:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method public getTransactionProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getTransactionStatus()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->u:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    if-nez v0, :cond_0

    .line 166
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v0

    .line 167
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->u:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method public setEventAttemptCount(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->j:Ljava/lang/String;

    .line 248
    return-void
.end method

.method public setEventAttemptTime(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->k:Ljava/lang/String;

    .line 256
    return-void
.end method

.method public setEventAttributeMap(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->e:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setEventCustomName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->l:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setEventId(J)V
    .locals 1

    .prologue
    .line 89
    iput-wide p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->a:J

    .line 90
    return-void
.end method

.method public setEventLevelId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->f:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setEventLevelName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->g:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setEventLevelStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->h:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setEventSessionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->c:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setEventSessionTimeStamp(J)V
    .locals 1

    .prologue
    .line 295
    iput-wide p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->d:J

    .line 296
    return-void
.end method

.method public setEventTableId(J)V
    .locals 1

    .prologue
    .line 287
    iput-wide p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->w:J

    .line 288
    return-void
.end method

.method public setEventTimeStamp(J)V
    .locals 1

    .prologue
    .line 207
    iput-wide p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->v:J

    .line 208
    return-void
.end method

.method public setEventTimeTaken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->i:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setTransactionCurrencyCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->r:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setTransactionId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 161
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->t:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setTransactionItemCount(I)V
    .locals 0

    .prologue
    .line 137
    iput p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->q:I

    .line 138
    return-void
.end method

.method public setTransactionItemDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->n:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setTransactionItemName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->m:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setTransactionItemPrice(D)V
    .locals 1

    .prologue
    .line 129
    iput-wide p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->p:D

    .line 130
    return-void
.end method

.method public setTransactionItemType(I)V
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INAPP:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 116
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INAPP:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->o:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    .line 122
    :goto_0
    return-void

    .line 117
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->SUBSCRIPTION:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 118
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->SUBSCRIPTION:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->o:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    goto :goto_0

    .line 120
    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->o:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_ITEM_TYPE;

    goto :goto_0
.end method

.method public setTransactionProductId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->s:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setTransactionStatus(I)V
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->PURCHASED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 172
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->PURCHASED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->u:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    .line 180
    :goto_0
    return-void

    .line 173
    :cond_0
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->REFUNDED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 174
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->REFUNDED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->u:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->FAILED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->getValue()I

    move-result v0

    if-ne v0, p1, :cond_2

    .line 176
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->FAILED:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->u:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    goto :goto_0

    .line 178
    :cond_2
    sget-object v0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;->INVALID:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    iput-object v0, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->u:Lcom/inmobi/commons/analytics/db/AnalyticsEvent$TRANSACTION_STATUS_SERVER_CODE;

    goto :goto_0
.end method

.method public setUserAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 267
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iput-object p1, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->x:Ljava/lang/String;

    .line 270
    iput-object p2, p0, Lcom/inmobi/commons/analytics/db/AnalyticsEvent;->y:Ljava/lang/String;

    .line 272
    :cond_0
    return-void
.end method
