.class public Lcom/google/firebase/database/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzbpk;",
            "Lcom/google/firebase/database/f;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/firebase/database/f;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.0"

    return-object v0
.end method
