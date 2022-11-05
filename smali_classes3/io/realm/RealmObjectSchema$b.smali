.class Lio/realm/RealmObjectSchema$b;
.super Ljava/lang/Object;
.source "RealmObjectSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/RealmObjectSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final a:Lio/realm/RealmFieldType;

.field public final b:Z


# direct methods
.method public constructor <init>(Lio/realm/RealmFieldType;Z)V
    .locals 0

    .prologue
    .line 785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    iput-object p1, p0, Lio/realm/RealmObjectSchema$b;->a:Lio/realm/RealmFieldType;

    .line 787
    iput-boolean p2, p0, Lio/realm/RealmObjectSchema$b;->b:Z

    .line 788
    return-void
.end method
