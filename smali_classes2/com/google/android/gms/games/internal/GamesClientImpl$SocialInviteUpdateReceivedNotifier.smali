.class final Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzabh$zzc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/GamesClientImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SocialInviteUpdateReceivedNotifier"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzabh$zzc",
        "<",
        "Lcom/google/android/gms/games/social/OnSocialInviteUpdateReceivedListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzbaV:Lcom/google/android/gms/games/social/SocialInvite;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/social/SocialInvite;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/games/internal/GamesClientImpl$SocialInviteUpdateReceivedNotifier;->zzbaV:Lcom/google/android/gms/games/social/SocialInvite;

    return-void
.end method


# virtual methods
.method public bridge synthetic zzs(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public zzwc()V
    .locals 0

    return-void
.end method
