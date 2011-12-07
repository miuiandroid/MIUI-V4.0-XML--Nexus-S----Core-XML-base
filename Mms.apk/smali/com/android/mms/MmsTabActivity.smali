.class public Lcom/android/mms/ui/MmsTabActivity;
.super Landroid/app/Activity;
.source "MmsTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MmsTabActivity$2;,
        Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;,
        Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;,
        Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;,
        Lcom/android/mms/ui/MmsTabActivity$TabState;
    }
.end annotation


# static fields
.field private static final DEFAULT_TAB:Lcom/android/mms/ui/MmsTabActivity$TabState;


# instance fields
.field private mActionBar:Landroid/app/ActionBar;

.field private mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

.field private mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

.field private mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

.field private mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

.field private mMmsPageChangeListener:Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;

.field private mMmsTabListener:Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mSearchFragment:Lcom/android/mms/ui/SearchFragment;

.field private mSearchMode:Z

.field private mSearchView:Landroid/widget/SearchView;

.field private mTabPager:Landroid/support/v4/view/ViewPager;

.field private mTabPagerAdapter:Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    sput-object v0, Lcom/android/mms/ui/MmsTabActivity;->DEFAULT_TAB:Lcom/android/mms/ui/MmsTabActivity$TabState;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;-><init>(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/MmsTabActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mMmsTabListener:Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;

    .line 38
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;-><init>(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/MmsTabActivity$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mMmsPageChangeListener:Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    .line 49
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity;->DEFAULT_TAB:Lcom/android/mms/ui/MmsTabActivity$TabState;

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 479
    new-instance v0, Lcom/android/mms/ui/MmsTabActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MmsTabActivity$1;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/ConversationFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/BookmarkFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/FestivalFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MmsTabActivity;Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MmsTabActivity;->selectTab(Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MmsTabActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MmsTabActivity;->setSearchMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MmsTabActivity;)Lcom/android/mms/ui/SearchFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;

    return-object v0
.end method

.method private addTab(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V
    .locals 2
    .parameter "tabState"
    .parameter "title"

    .prologue
    .line 125
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v0

    .line 126
    .local v0, tab:Landroid/app/ActionBar$Tab;
    invoke-virtual {v0, p1}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 127
    invoke-virtual {v0, p2}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    .line 128
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mMmsTabListener:Lcom/android/mms/ui/MmsTabActivity$MmsTabListener;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    .line 129
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 130
    return-void
.end method

.method private createActionBar()V
    .locals 5

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    .line 103
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 104
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 107
    sget-object v2, Lcom/android/mms/ui/MmsTabActivity$TabState;->CONVERSATION:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v3, 0x7f0a0117

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MmsTabActivity;->addTab(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 108
    sget-object v2, Lcom/android/mms/ui/MmsTabActivity$TabState;->BOOKMARK:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v3, 0x7f0a0118

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MmsTabActivity;->addTab(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 109
    sget-object v2, Lcom/android/mms/ui/MmsTabActivity$TabState;->FESTIVAL:Lcom/android/mms/ui/MmsTabActivity$TabState;

    const v3, 0x7f0a0119

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MmsTabActivity;->addTab(Lcom/android/mms/ui/MmsTabActivity$TabState;I)V

    .line 112
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040044

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, customSearchView:Landroid/view/View;
    new-instance v1, Landroid/app/ActionBar$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    .line 116
    .local v1, layoutParams:Landroid/app/ActionBar$LayoutParams;
    const v2, 0x7f0f00bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    .line 117
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 118
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    const v3, 0x7f0a0101

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/MmsTabActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 121
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v2, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 122
    return-void
.end method

.method private createFragments()V
    .locals 5

    .prologue
    const v4, 0x7f0f008f

    .line 133
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 135
    .local v0, fragmentManager:Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 137
    .local v1, transaction:Landroid/app/FragmentTransaction;
    const v2, 0x7f0f0090

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/SearchFragment;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;

    .line 139
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/MmsTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    .line 140
    new-instance v2, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;-><init>(Lcom/android/mms/ui/MmsTabActivity;)V

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPagerAdapter:Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;

    .line 141
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPagerAdapter:Lcom/android/mms/ui/MmsTabActivity$TabPagerAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 142
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mMmsPageChangeListener:Lcom/android/mms/ui/MmsTabActivity$MmsPageChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 150
    const-string v2, "ConversationFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/ConversationFragment;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    .line 152
    const-string v2, "BookmarkFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/BookmarkFragment;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    .line 154
    const-string v2, "FestivalFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/FestivalFragment;

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    .line 157
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    if-nez v2, :cond_0

    .line 158
    new-instance v2, Lcom/android/mms/ui/ConversationFragment;

    invoke-direct {v2}, Lcom/android/mms/ui/ConversationFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    .line 159
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    const-string v3, "ConversationFragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 162
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    if-nez v2, :cond_1

    .line 163
    new-instance v2, Lcom/android/mms/ui/BookmarkFragment;

    invoke-direct {v2}, Lcom/android/mms/ui/BookmarkFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    .line 164
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    const-string v3, "BookmarkFragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 167
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    if-nez v2, :cond_2

    .line 168
    new-instance v2, Lcom/android/mms/ui/FestivalFragment;

    invoke-direct {v2}, Lcom/android/mms/ui/FestivalFragment;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    .line 169
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    const-string v3, "FestivalFragment"

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 173
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mConversationFragment:Lcom/android/mms/ui/ConversationFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 174
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mBookmarkFragment:Lcom/android/mms/ui/BookmarkFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 175
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mFestivalFragment:Lcom/android/mms/ui/FestivalFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 176
    iget-object v2, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchFragment:Lcom/android/mms/ui/SearchFragment;

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 178
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 179
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 180
    return-void
.end method

.method private makeMenuItemVisible(Landroid/view/Menu;IZ)V
    .locals 1
    .parameter "menu"
    .parameter "itemId"
    .parameter "visible"

    .prologue
    .line 363
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 364
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 365
    invoke-interface {v0, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 367
    :cond_0
    return-void
.end method

.method private selectTab(Lcom/android/mms/ui/MmsTabActivity$TabState;Z)V
    .locals 4
    .parameter "tab"
    .parameter "updateFragment"

    .prologue
    .line 305
    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    if-ne p1, v1, :cond_1

    .line 321
    :goto_0
    return-void

    .line 309
    :cond_1
    iput-object p1, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    .line 311
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v0

    .line 312
    .local v0, index:I
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getSelectedNavigationIndex()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 314
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 317
    :cond_2
    if-eqz p2, :cond_3

    .line 318
    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mTabPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private setFocusOnSearchView()V
    .locals 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    .line 476
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 477
    return-void
.end method

.method private setSearchMode(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eq v0, p1, :cond_0

    .line 416
    iput-boolean p1, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    .line 417
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->updateActionBar()V

    .line 418
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    if-nez v0, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v0, :cond_2

    .line 422
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->setFocusOnSearchView()V

    .line 426
    :goto_1
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method private updateActionBar()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 431
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v0, :cond_1

    .line 432
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->setFocusOnSearchView()V

    .line 435
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 436
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 448
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->updateDisplayOptions()V

    .line 449
    return-void

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 441
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 442
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 446
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    goto :goto_0
.end method

.method private updateDisplayOptions()V
    .locals 5

    .prologue
    .line 453
    const/16 v0, 0x16

    .line 457
    .local v0, MASK:I
    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3}, Landroid/app/ActionBar;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v1, v3, 0x16

    .line 460
    .local v1, current:I
    const/4 v2, 0x0

    .line 461
    .local v2, newFlags:I
    iget-boolean v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v3, :cond_0

    .line 462
    or-int/lit8 v2, v2, 0x2

    .line 463
    or-int/lit8 v2, v2, 0x4

    .line 464
    or-int/lit8 v2, v2, 0x10

    .line 466
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    iget-boolean v4, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 468
    if-eq v1, v2, :cond_1

    .line 470
    iget-object v3, p0, Lcom/android/mms/ui/MmsTabActivity;->mActionBar:Landroid/app/ActionBar;

    const/16 v4, 0x16

    invoke-virtual {v3, v2, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 472
    :cond_1
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->setSearchMode(Z)V

    .line 412
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 98
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 72
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->setContentView(I)V

    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->createActionBar()V

    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/MmsTabActivity;->createFragments()V

    .line 78
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 326
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 371
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 395
    const/4 v0, 0x0

    .line 397
    :cond_0
    :goto_0
    return v0

    .line 373
    :sswitch_0
    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 376
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 377
    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MmsTabActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 380
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->onSearchRequested()Z

    goto :goto_0

    .line 384
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_FIREWALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/MmsTabActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 388
    :sswitch_4
    iget-boolean v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/android/mms/ui/MmsTabActivity;->onBackPressed()V

    goto :goto_0

    .line 371
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_4
        0x7f0f00db -> :sswitch_2
        0x7f0f00dc -> :sswitch_0
        0x7f0f00dd -> :sswitch_1
        0x7f0f00df -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f0f00dd

    const v5, 0x7f0f00dc

    const v4, 0x7f0f00db

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 331
    iget-boolean v0, p0, Lcom/android/mms/ui/MmsTabActivity;->mSearchMode:Z

    if-eqz v0, :cond_0

    .line 332
    invoke-direct {p0, p1, v5, v3}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 333
    invoke-direct {p0, p1, v4, v3}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 334
    const v0, 0x7f0f00de

    invoke-direct {p0, p1, v0, v3}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 335
    invoke-direct {p0, p1, v6, v3}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 355
    :goto_0
    return v2

    .line 339
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MmsTabActivity$2;->$SwitchMap$com$android$mms$ui$MmsTabActivity$TabState:[I

    iget-object v1, p0, Lcom/android/mms/ui/MmsTabActivity;->mCurrentTab:Lcom/android/mms/ui/MmsTabActivity$TabState;

    invoke-virtual {v1}, Lcom/android/mms/ui/MmsTabActivity$TabState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 341
    :pswitch_0
    invoke-direct {p0, p1, v5, v2}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 342
    invoke-direct {p0, p1, v4, v2}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 343
    const v0, 0x7f0f00de

    invoke-direct {p0, p1, v0, v2}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 344
    invoke-direct {p0, p1, v6, v2}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 345
    const v0, 0x7f0f00df

    invoke-direct {p0, p1, v0, v2}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 349
    :pswitch_1
    invoke-direct {p0, p1, v5, v3}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 350
    invoke-direct {p0, p1, v4, v3}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 351
    const v0, 0x7f0f00de

    invoke-direct {p0, p1, v0, v3}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    .line 352
    invoke-direct {p0, p1, v6, v2}, Lcom/android/mms/ui/MmsTabActivity;->makeMenuItemVisible(Landroid/view/Menu;IZ)V

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    invoke-static {}, Lcom/android/mms/ui/NewMessagePopupActivity;->dismiss()V

    .line 84
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 401
    invoke-direct {p0, v0}, Lcom/android/mms/ui/MmsTabActivity;->setSearchMode(Z)V

    .line 402
    return v0
.end method
