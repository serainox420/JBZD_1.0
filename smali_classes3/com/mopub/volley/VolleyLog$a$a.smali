.class Lcom/mopub/volley/VolleyLog$a$a;
.super Ljava/lang/Object;
.source "VolleyLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/volley/VolleyLog$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final thread:J

.field public final time:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/mopub/volley/VolleyLog$a$a;->name:Ljava/lang/String;

    .line 116
    iput-wide p2, p0, Lcom/mopub/volley/VolleyLog$a$a;->thread:J

    .line 117
    iput-wide p4, p0, Lcom/mopub/volley/VolleyLog$a$a;->time:J

    .line 118
    return-void
.end method
