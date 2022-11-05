.class public Lpl/jbzd/app/model/Comment;
.super Lio/realm/u;
.source "Comment.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lio/realm/c;
.implements Lpl/jbzd/app/model/ApiModel;
.implements Lpl/jbzd/app/view/feed/model/BaseFeedModel;


# annotations
.annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnoreProperties;
    ignoreUnknown = true
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public comment:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "comment"
    .end annotation
.end field

.field public created_at:Ljava/util/Date;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonFormat;
        pattern = "yyyy-MM-dd HH:mm:ss"
        shape = .enum Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;->STRING:Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
        timezone = "GMT+2"
    .end annotation

    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "created_at"
    .end annotation
.end field

.field public id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "id"
    .end annotation
.end field

.field public media_id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent_id"
    .end annotation
.end field

.field public minus:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "minus"
    .end annotation
.end field

.field public parent_id:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent_comment_id"
    .end annotation
.end field

.field public plus:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "plus"
    .end annotation
.end field

.field public replies:Lio/realm/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation
.end field

.field public reports:I
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "reports"
    .end annotation
.end field

.field public showReplies:Z

.field public user:Lpl/jbzd/app/model/User;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "user"
    .end annotation
.end field

.field public voted:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lpl/jbzd/app/model/Comment$1;

    invoke-direct {v0}, Lpl/jbzd/app/model/Comment$1;-><init>()V

    sput-object v0, Lpl/jbzd/app/model/Comment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 49
    :cond_0
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Comment;->realmSet$voted(I)V

    .line 61
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Comment;->realmSet$voted(I)V

    .line 62
    new-instance v0, Lio/realm/q;

    invoke-direct {v0}, Lio/realm/q;-><init>()V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$replies(Lio/realm/q;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Lio/realm/u;-><init>()V

    instance-of v0, p0, Lio/realm/internal/l;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lio/realm/internal/l;

    invoke-interface {v0}, Lio/realm/internal/l;->a()V

    .line 49
    :cond_0
    invoke-virtual {p0, v1}, Lpl/jbzd/app/model/Comment;->realmSet$voted(I)V

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$id(I)V

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$media_id(I)V

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$parent_id(I)V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$comment(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$plus(I)V

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$minus(I)V

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$reports(I)V

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$created_at(Ljava/util/Date;)V

    .line 171
    const-class v0, Lpl/jbzd/app/model/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/User;

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$user(Lpl/jbzd/app/model/User;)V

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$voted(I)V

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lpl/jbzd/app/model/Comment;->showReplies:Z

    .line 175
    new-instance v0, Lio/realm/q;

    invoke-direct {v0}, Lio/realm/q;-><init>()V

    invoke-virtual {p0, v0}, Lpl/jbzd/app/model/Comment;->realmSet$replies(Lio/realm/q;)V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    :goto_1
    if-ge v1, v2, :cond_2

    .line 179
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v3

    const-class v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    invoke-virtual {v3, v0}, Lio/realm/q;->a(Lio/realm/t;)Z

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    .line 173
    goto :goto_0

    .line 181
    :cond_2
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreated_at()Ljava/util/Date;
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$created_at()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v0

    return v0
.end method

.method public getMedia_id()I
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$media_id()I

    move-result v0

    return v0
.end method

.method public getMinus()I
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v0

    return v0
.end method

.method public getParent_id()I
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v0

    return v0
.end method

.method public getPlus()I
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v0

    return v0
.end method

.method public getReplies()Lio/realm/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v0

    return-object v0
.end method

.method public getReports()I
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$reports()I

    move-result v0

    return v0
.end method

.method public getUser()Lpl/jbzd/app/model/User;
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    return-object v0
.end method

.method public getVoted()I
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v0

    return v0
.end method

.method public isShowReplies()Z
    .locals 1

    .prologue
    .line 154
    iget-boolean v0, p0, Lpl/jbzd/app/model/Comment;->showReplies:Z

    return v0
.end method

.method public realmGet$comment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Comment;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public realmGet$created_at()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Comment;->created_at:Ljava/util/Date;

    return-object v0
.end method

.method public realmGet$id()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Comment;->id:I

    return v0
.end method

.method public realmGet$media_id()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Comment;->media_id:I

    return v0
.end method

.method public realmGet$minus()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Comment;->minus:I

    return v0
.end method

.method public realmGet$parent_id()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Comment;->parent_id:I

    return v0
.end method

.method public realmGet$plus()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Comment;->plus:I

    return v0
.end method

.method public realmGet$replies()Lio/realm/q;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Comment;->replies:Lio/realm/q;

    return-object v0
.end method

.method public realmGet$reports()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Comment;->reports:I

    return v0
.end method

.method public realmGet$user()Lpl/jbzd/app/model/User;
    .locals 1

    iget-object v0, p0, Lpl/jbzd/app/model/Comment;->user:Lpl/jbzd/app/model/User;

    return-object v0
.end method

.method public realmGet$voted()I
    .locals 1

    iget v0, p0, Lpl/jbzd/app/model/Comment;->voted:I

    return v0
.end method

.method public realmSet$comment(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Comment;->comment:Ljava/lang/String;

    return-void
.end method

.method public realmSet$created_at(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Comment;->created_at:Ljava/util/Date;

    return-void
.end method

.method public realmSet$id(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Comment;->id:I

    return-void
.end method

.method public realmSet$media_id(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Comment;->media_id:I

    return-void
.end method

.method public realmSet$minus(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Comment;->minus:I

    return-void
.end method

.method public realmSet$parent_id(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Comment;->parent_id:I

    return-void
.end method

.method public realmSet$plus(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Comment;->plus:I

    return-void
.end method

.method public realmSet$replies(Lio/realm/q;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Comment;->replies:Lio/realm/q;

    return-void
.end method

.method public realmSet$reports(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Comment;->reports:I

    return-void
.end method

.method public realmSet$user(Lpl/jbzd/app/model/User;)V
    .locals 0

    iput-object p1, p0, Lpl/jbzd/app/model/Comment;->user:Lpl/jbzd/app/model/User;

    return-void
.end method

.method public realmSet$voted(I)V
    .locals 0

    iput p1, p0, Lpl/jbzd/app/model/Comment;->voted:I

    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$comment(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public setCreated_at(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$created_at(Ljava/util/Date;)V

    .line 127
    return-void
.end method

.method public setId(I)V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$id(I)V

    .line 71
    return-void
.end method

.method public setMedia_id(I)V
    .locals 0

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$media_id(I)V

    .line 79
    return-void
.end method

.method public setMinus(I)V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$minus(I)V

    .line 111
    return-void
.end method

.method public setParent_id(I)V
    .locals 0

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$parent_id(I)V

    .line 87
    return-void
.end method

.method public setPlus(I)V
    .locals 0

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$plus(I)V

    .line 103
    return-void
.end method

.method public setReplies(Lio/realm/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/q",
            "<",
            "Lpl/jbzd/app/model/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$replies(Lio/realm/q;)V

    .line 151
    return-void
.end method

.method public setReports(I)V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$reports(I)V

    .line 119
    return-void
.end method

.method public setShowReplies(Z)V
    .locals 0

    .prologue
    .line 158
    iput-boolean p1, p0, Lpl/jbzd/app/model/Comment;->showReplies:Z

    .line 159
    return-void
.end method

.method public setUser(Lpl/jbzd/app/model/User;)V
    .locals 0

    .prologue
    .line 134
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$user(Lpl/jbzd/app/model/User;)V

    .line 135
    return-void
.end method

.method public setVoted(I)V
    .locals 0

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lpl/jbzd/app/model/Comment;->realmSet$voted(I)V

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-class v0, Lpl/jbzd/app/model/Comment;

    invoke-static {p0, v0}, Lpl/jbzd/api/util/ApiUtils;->toString(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$media_id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$parent_id()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$comment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$plus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$minus()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$reports()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$created_at()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 194
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$user()Lpl/jbzd/app/model/User;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 195
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$voted()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget-boolean v0, p0, Lpl/jbzd/app/model/Comment;->showReplies:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    invoke-virtual {p0}, Lpl/jbzd/app/model/Comment;->realmGet$replies()Lio/realm/q;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/q;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl/jbzd/app/model/Comment;

    .line 200
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_0
    move v0, v1

    .line 196
    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method
